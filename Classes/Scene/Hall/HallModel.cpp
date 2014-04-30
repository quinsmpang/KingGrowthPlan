//
//  HallModel.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-21.
//
//

#include "Hall.h"

HallModel::HallModel()
{
    _manager = GameManager::getInstance();
}
void HallModel::initWithView(Hall* view)
{
    _view = view;
    
    _status = _manager->getMapByKey("PlayerInfo");
    int coins = _manager->getIntByKey("CountryInfo", {"金钱"});
    coins /= 10000;
    std::string str = __String::createWithFormat("%d万两",coins)->_string;
    _status["coins"] = Value(str);
    auto date = getDate();
    _status["date"] = date;
    auto nowtime = getTime();
    _status["time"] = nowtime;
    _view->initStatus(_status);
}
std::string HallModel::getDate()
{
    auto manager = _manager;
    auto date = manager->getStringByKey("PlayerInfo", {"CountryTitle"});
    std::string tmpstr = manager->getStringByKey("Common", {"年"});
    if (tmpstr == "1") {
        date += "元年 ";
    }else {
        
        date = date + tmpstr + "年 ";
    }
    int tmp = manager->getIntByKey("Common",{"季"});
    if (tmp == 1)
        date = date + "春季 ";
    else if(tmp == 2)
        date = date + "夏季 ";
    else if(tmp == 3)
        date = date + "秋季 ";
    else
        date = date + "冬季 ";
    tmp = manager->getIntByKey("Common",{"旬"});
    if (tmp == 1)
        date += "上旬";
    else
        date += "下旬";
    return date;
}
std::string HallModel::getTime()
{
    std::string nowtime = "";
    int tmp = _manager->getIntByKey("Common",{"时辰"});
    if (tmp == 1)
        nowtime = "清晨";
    else if(tmp == 2)
        nowtime = "午后";
    else if(tmp == 3)
        nowtime = "晚上";
    else
        nowtime = "深夜";
    return nowtime;
}


void HallModel::clickAt(std::string name)
{
    CCLOG("%s",name.c_str());
    std::string show = "";
    
    int tili = _manager->getIntByKey("PlayerInfo",{"Strength"});
    tili -= 40;
    int nowtime = _manager->getIntByKey("Common",{"时辰"});
    
    int type = 0;
    
    if (name == "baijuyuan"){
        show = "皇上在百剧园欣赏表演。";
        show += upgrade("Caiyi","才艺");
        type = 1;
    }
    else if(name == "xushuyuan"){
        show = "皇上在御书园读书。";
        show += upgrade("Zhihui","智慧");
        type = 2;
    }
    else if(name == "jinlongdian"){
        show = "皇上在金龙殿休息。";
        int healthy = _manager->getIntByKey("PlayerInfo",{"Healthy"});
        srand(time(NULL));
        if (rand() % 4 == 0) {
            auto dict = _manager->getDictionaryByKey("Harem");
            ValueVector arr;
            for (int i = 0; i < dict->count(); i++) {
                auto item = (__Dictionary*)General::getObjectAtIndex(dict, i);
                if (item->valueForKey("name")->_string != "") {
                    arr.push_back(Value(item->valueForKey("title")->getCString()));
                }
            }
            auto title = arr.at(rand() % arr.size()).asString();
            show = show + title + "娘娘前来伺候皇上休息。";
            healthy += 5;
        }
        healthy += 5;
        healthy = (healthy > 100) ? 100 : healthy;
        _manager->setDeepIntValue(healthy, "PlayerInfo",{"Healthy"});
        _status["Healthy"] = Value(healthy);
        
        tili += 260;
        if (tili > _manager->getIntByKey("PlayerInfo",{"StrengthMax"})) {
            tili = _manager->getIntByKey("PlayerInfo",{"StrengthMax"});
            show += "\n体力恢复全满。";
        }else
            show += "\n体力恢复220";
    }
    else if(name == "wudaochang"){
        show = "皇上在武道场锻炼身体。";
        show += upgrade("Wushu","武术");
        type = 3;
    }
    else if(name == "cininggong"){
        if ( nowtime < 4 && nowtime > 1) {
            show = "前往慈宁宫向太后请安。";
            tili += 10;
            upgrade("Daode","道德");
            type = 4;
        }else{
            type = 0;
        }
    }
    else if(name == "qingqige"){
        show = "皇上在琴棋阁下棋弹琴。";
        show += upgrade("Meili","魅力");
        type = 5;
    }
    
    _manager->setDeepIntValue(tili, "PlayerInfo",{"Strength"});
    _status["Strength"] = Value(tili);
    
    if (type != 0) {
        _view->showEffect(show,type);
    }
}
std::string HallModel::upgrade(std::string type,std::string propname = "")
{
    std::string show = "";
    srand(time(NULL));
    int added = rand() % 12;
    int old = _manager->getIntByKey("PlayerInfo",{type});
    if (added < 2) {
        _manager->setDeepIntValue(old + 1, "PlayerInfo",{type});
        _status[type] = old + 1;
        std::string tmparr[2] = {"意兴阑珊", "心神不一"};
        show = show + tmparr[added] + "\n" + propname + "稍微提高。";
    }else if(added < 4){
        _manager->setDeepIntValue(old + 3, "PlayerInfo",{type});
        _status[type] = old + 3;
        std::string tmparr[2] = {"心不在焉", "心有杂念"};
        show = show + tmparr[added - 2] + "\n" + propname + "稍微提高。";
    }else {
        _manager->setDeepIntValue(old + 5, "PlayerInfo",{type});
        _status[type] = old + 5;
        std::string tmparr[4] = {"触类旁通", "劲力十足", "颇有领悟", "勤奋专心"};
        show = show + tmparr[added % 4] + "\n" + propname + "明显提高。";
    }
    
    return show;
}
void HallModel::updateTime()
{
    int nowtime = _manager->getIntByKey("Common",{"时辰"});
    nowtime++;
    int flag = 0;
    if(nowtime > 4)
    {
        nowtime = 1;
        flag = 1;
        int xun = _manager->getIntByKey("Common",{"旬"});
        xun++;
        if (xun > 2) {
            flag = 2;
            xun = 1;
            int ji = _manager->getIntByKey("Common",{"季"});
            ji++;
            if (ji > 4) {
                flag = 3;
                ji = 1;
                int year = _manager->getIntByKey("Common",{"年"});
                year++;
                _manager->setDeepIntValue(nowtime, "Common",{"年"});
            }
            _manager->setDeepIntValue(nowtime, "Common",{"季"});
        }
        _manager->setDeepIntValue(nowtime, "Common",{"旬"});
    }
    _manager->setDeepIntValue(nowtime, "Common",{"时辰"});
    _status["time"] = getTime();
    _status["date"] = getDate();
    _view->initStatus(_status);
    
    if (flag != 0) {
        _view->showNextTime();
    }
}
void HallModel::checkEvent()
{
    CCLOG("hahaha");
}