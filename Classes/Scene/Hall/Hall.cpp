//
//  Hall.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#include "Hall.h"

Scene* Hall::createScene()
{
    auto scene = Scene::create();
    auto layer = Hall::create();
    scene->addChild(layer);
    return scene;
}

bool Hall::init()
{
    if (!Layer::init()) {
        return false;
    }
    
    _layer = GUIReader::getInstance()->widgetFromJsonFile("Images/Hall_1.json");
    this->addChild(_layer);
    
    _model = new HallModel();
    _model->initWithView(this);
    
    initBtn();
    _clickIndex = -1;
    return true;
}
void Hall::initBtn()
{
    auto hallimage = _layer->getChildByName("hallimage");
    auto childrens = hallimage->getChildren();
    for(int i = 0;i < childrens.size();i++)
    {
        auto btn = (Widget*)(childrens.at(i));
        btn->setTouchEnabled(true);
        btn->addTouchEventListener(this, toucheventselector(Hall::hallBtnClicked));
    }
}
void Hall::initStatus(ValueMap map)
{
    auto status = _layer->getChildByName("status");
    
    auto label = (Text*)(status->getChildByName("agenum"));
    label->setText(map["Age"].asString());
    auto per = (LoadingBar*)(status->getChildByName("ageper"));
    per->setPercent(map["Age"].asInt());
    
    label = (Text*)(status->getChildByName("healthynum"));
    label->setText(map["Healthy"].asString());
    per = (LoadingBar*)(status->getChildByName("healthyper"));
    per->setPercent(map["Healthy"].asInt());
    
    label = (Text*)(status->getChildByName("tilinum"));
    label->setText(map["Strength"].asString());
    per = (LoadingBar*)(status->getChildByName("tiliper"));
    per->setPercent(map["Strength"].asFloat() / map["StrengthMax"].asFloat() * 100);
    
    label = (Text*)(status->getChildByName("weiwangnum"));
    label->setText(map["Weiwang"].asString());
    per = (LoadingBar*)(status->getChildByName("weiwangper"));
    per->setPercent(map["Weiwang"].asFloat() / 999 * 100);
    
    label = (Text*)(status->getChildByName("daodenum"));
    label->setText(map["Daode"].asString());
    per = (LoadingBar*)(status->getChildByName("daodeper"));
    per->setPercent(map["Daode"].asFloat() / 999 * 100);
    
    label = (Text*)(status->getChildByName("baolinum"));
    label->setText(map["Baoli"].asString());
    per = (LoadingBar*)(status->getChildByName("baoliper"));
    per->setPercent(map["Baoli"].asFloat() / 999 * 100);
    
    label = (Text*)(status->getChildByName("kuailenum"));
    label->setText(map["Happyness"].asString());
    per = (LoadingBar*)(status->getChildByName("kuaileper"));
    per->setPercent(map["Happyness"].asInt());
    
    label = (Text*)(status->getChildByName("meilinum"));
    label->setText(map["Meili"].asString());
    per = (LoadingBar*)(status->getChildByName("meiliper"));
    per->setPercent(map["Meili"].asFloat() / 999 * 100);
    
    label = (Text*)(status->getChildByName("zhihuinum"));
    label->setText(map["Zhihui"].asString());
    per = (LoadingBar*)(status->getChildByName("zhihuiper"));
    per->setPercent(map["Zhihui"].asFloat() / 999 * 100);
    
    label = (Text*)(status->getChildByName("wushunum"));
    label->setText(map["Wushu"].asString());
    per = (LoadingBar*)(status->getChildByName("wushuper"));
    per->setPercent(map["Wushu"].asFloat() / 999 * 100);
    
    label = (Text*)(status->getChildByName("caiyinum"));
    label->setText(map["Caiyi"].asString());
    per = (LoadingBar*)(status->getChildByName("caiyiper"));
    per->setPercent(map["Caiyi"].asFloat() / 999 * 100);
    
    label = (Text*)(status->getChildByName("guokunum"));
    label->setText(map["coins"].asString());
    per = (LoadingBar*)(status->getChildByName("guokuper"));
    per->setPercent(100);
    
    showTime(map["date"].asString(), map["time"].asString());
}
void Hall::showTime(std::string date, std::string time)
{
    auto label = (Text*)(_layer->getChildByName("evening1"));
    label->setText(time);
    label = (Text*)(_layer->getChildByName("status")->getChildByName("time"));
    label->setText(date);
    
    int season = GameManager::getInstance()->getIntByKey("Common",{"季"});
    
    std::string filename = "";
    if (time == "晚上")
    {
        if(season != 4)
            filename = "Images/Hall/evening1.jpg";
        else
            filename = "Images/Hall/winterevening1.jpg";
    }
    else if (time == "深夜")
    {
        if(season != 4)
            filename = "Images/Hall/evening2.jpg";
        else
            filename = "Images/Hall/winterevening2.jpg";
    }
    else
    {
        switch (season) {
            case 1:
                filename = "Images/Hall/spring.png";
                break;
            case 2:
                filename = "Images/Hall/summer.png";
                break;
            case 3:
                filename = "Images/Hall/autumn.png";
                break;
            case 4:
                filename = "Images/Hall/winter.jpg";
                break;
            default:
                break;
        }
    }
    auto hallimage = (ImageView*)(_layer->getChildByName("hallimage"));
    hallimage->loadTexture(filename.c_str());
}



void Hall::hallBtnClicked(Object* target,TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto btn = (Widget*)target;
        std::string name = btn->getName();
        _model->clickAt(name);
    }
}
#pragma -mark effect
Animation* Hall::createAnimation(clickType type,std::string& filename)
{
    auto animage = Animation::create();
    animage->setDelayPerUnit(0.5f);
    switch (type) {
        case HALL_BAIJUYUAN:
        {
            srand(time(NULL));
            int type = rand() % 2;
            if (type == 0) {
                filename = "Images/Hall/Image 410.png";
                animage->addSpriteFrameWithFile("Images/Hall/Image 410.png");
                animage->addSpriteFrameWithFile("Images/Hall/Image 412.png");
            }else {
                filename = "Images/Hall/Image 415.png";
                animage->addSpriteFrameWithFile("Images/Hall/Image 415.png");
                animage->addSpriteFrameWithFile("Images/Hall/Image 417.png");
                animage->addSpriteFrameWithFile("Images/Hall/Image 419.png");
            }
        }
            break;
        case HALL_YUSHUYUAN:
        {
            filename = "Images/Hall/Image 395.png";
            animage->addSpriteFrameWithFile("Images/Hall/Image 395.png");
            animage->addSpriteFrameWithFile("Images/Hall/Image 397.png");
        }
            break;
        case HALL_WUDAOCHANG:
        {
            filename = "Images/Hall/Image 400.png";
            animage->addSpriteFrameWithFile("Images/Hall/Image 400.png");
            animage->addSpriteFrameWithFile("Images/Hall/Image 402.png");
        }
            break;
        case HALL_CININGGONG:
        {
            filename = "Images/Hall/Image 405.png";
            animage->addSpriteFrameWithFile("Images/Hall/Image 405.png");
            animage->addSpriteFrameWithFile("Images/Hall/Image 407.png");
        }
            break;
        case HALL_QINGQIGE:
        {
            srand(time(NULL));
            int type = 3;
            if (type == 0) {
                filename = "Images/Hall/Image 423.png";
                animage->addSpriteFrameWithFile("Images/Hall/Image 423.png");
            }else if(type == 1){
                filename = "Images/Hall/Image 425.png";
                animage->addSpriteFrameWithFile("Images/Hall/Image 425.png");
            }else {
                filename = "Images/Hall/Image 427.png";
                animage->addSpriteFrameWithFile("Images/Hall/Image 427.png");
                animage->addSpriteFrameWithFile("Images/Hall/Image 429.png");
            }
        }
            break;
        case HALL_JINRONGDIAN:
        {
            filename = "Images/Hall/Image 391.png";
            animage->addSpriteFrameWithFile("Images/Hall/Image 391.png");
        }
            break;
        default:
            break;
    }
    return animage;
}
void Hall::showEffect(std::string str,clickType type)
{
    auto effect = _layer->getChildByName("effect");
    effect->setVisible(true);
    effect->setTouchEnabled(true);
    
    auto effectlabel = (Text*)(effect->getChildByName("effectlabel"));
    effectlabel->setText(str);
    
    auto btn = effect->getChildByName("continue");
    btn->setTouchEnabled(true);
    btn->addTouchEventListener(this, toucheventselector(Hall::hideEffect));
    
    std::string firstFrame;
    auto anition = createAnimation(type,firstFrame);
    
    auto images = Sprite::create(firstFrame);
    images->setPosition(Point(373,348));
    images->setTag(500);
    effect->addChild(images, 2);
    
    auto act = Animate::create(anition);
    images->runAction(RepeatForever::create(act));
}
void Hall::hideEffect(Object* target,TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto effect = _layer->getChildByName("effect");
        effect->removeChildByTag(500);
        effect->setVisible(false);
        effect->setTouchEnabled(false);
        auto btn = effect->getChildByName("continue");
        btn->setTouchEnabled(false);
        _model->updateTime();
    }
}
void Hall::showNextTime()
{
    auto nextframe = _layer->getChildByName("nextframe");
    nextframe->setVisible(true);
    nextframe->setTouchEnabled(true);
    nextframe->runAction(Sequence::create(DelayTime::create(1.0f), CallFunc::create(CC_CALLBACK_0(Hall::hideNextTime, this)), NULL));
}
void Hall::hideNextTime()
{
    _model->checkEvent();
    auto nextframe = _layer->getChildByName("nextframe");
    nextframe->setVisible(false);
    nextframe->setTouchEnabled(false);
}


