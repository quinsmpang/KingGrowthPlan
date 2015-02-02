//
//  GenerateData.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#include "Dengji.h"
#include "InitGameData.h"
Scene* Dengji::createScene()
{
    auto scene = Scene::create();
    auto layer = Dengji::create();
    scene->addChild(layer);
    return scene;
}

bool Dengji::init()
{
    if (!Layer::init()) {
        return false;
    }
    
    _layer = GUIReader::getInstance()->widgetFromJsonFile("Images/Dengji_1.json");
    this->addChild(_layer);
    
    _initdataIndex = 0;
    
    _data = new InitGameData();
    initStep1();
    
    return true;
}
void Dengji::initData()
{
    switch (_initdataIndex) {
        case 0:
            _data->initHougong();
            break;
        case 1:
            _data->initCountryPro();
            break;
        case 2:
            _data->initChengshi();
            break;
        case 3:
            _data->initGuanyuan();
            break;
        case 4:
            _data->initOthers();
            break;
        default:
            break;
    }
    _initdataIndex++;
}
void Dengji::initStep1()
{
    auto step1 = _layer->getChildByName("step1");
    auto image = (ImageView*)step1->getChildByName("image");
    auto filepath = GameManager::getInstance()->getStringByKey("Harem", {"皇后", "image"});
    image->loadTexture(filepath.c_str());
    
    std::string texts[5] = {"太子殿下……\n臣妾叫错了，您已经是皇上了。","皇上吉祥，\n今个皇上精神真好。","皇上贵为九五之尊，今天起要打起精神。","皇上吉祥，\n第一次上朝，可要打起精神哦。", "皇上吉祥，\n这是臣妾准备的早点，请皇上用膳。"};
    auto words = (Text*)step1->getChildByName("words");
    auto index = rand() % 5;
    words->setText(texts[index]);
    
    _clicked = 0;
    auto button = step1->getChildByName("touch");
    button->setTouchEnabled(true);
    button->addTouchEventListener(this, toucheventselector(Dengji::step1Touched));
}
void Dengji::initStep2()
{
    _layer->getChildByName("step1")->removeFromParent();
    auto step2 = _layer->getChildByName("step2");
    step2->setVisible(true);
    auto words = (Text*)step2->getChildByName("total");
    
    std::string word = "性格测试结束，初始属性调整完毕。\n\n";
    auto strtmp = GameManager::getInstance()->getStringByKey("PlayerInfo",{"PlayerName"});
    word = word + "名字：" + strtmp + "\n";
    strtmp = GameManager::getInstance()->getStringByKey("PlayerInfo",{"CountryTitle"});
    word = word + "年号：" + strtmp + "\n";
    strtmp = GameManager::getInstance()->getStringByKey("Harem", {"皇后", "name"});
    word = word + "皇后：" + strtmp + "，";
    strtmp = GameManager::getInstance()->getStringByKey("PlayerInfo",{"Zibei"});
    word = word + "皇子字辈：" + strtmp + "\n";
    word = word + "一切就绪，准备登基吧！";
    words->setText(word);
    
    auto button = step2->getChildByName("start");
    button->setTouchEnabled(true);
    button->addTouchEventListener(this, toucheventselector(Dengji::step2Touched));
}
void Dengji::initStep3()
{
    auto step3 = _layer->getChildByName("step3");
    step3->setVisible(true);
    
    
    auto button = step3->getChildByName("next");
    button->setTouchEnabled(true);
    
    auto words = (Text*)step3->getChildByName("word3");
    
    switch (_clicked) {
        case 0:
        {
            _layer->getChildByName("step2")->removeFromParent();
            std::string word = "主子好！\n";
            word = word + "我是小桂子，您的贴身奴才。\n";
            word = word + "登基典礼一会就要开始了。\n";
            word = word + "您准备好了吗？";
            words->setText(word);
            button->addTouchEventListener(this, toucheventselector(Dengji::step3Touched));
        }
            break;
        case 1:
        {
            _layer->getChildByName("step4")->removeFromParent();
            std::string word = "接着举行皇后册立大典。\n";
            word = word + "将原太子妃立为皇后，\n";
            word = word + "并预立长子为太子，\n";
            word = word + "一切礼仪都在大臣的安排下顺利完成。";
            words->setText(word);
            button->addTouchEventListener(this, toucheventselector(Dengji::step5Touched));
        }
            break;
        case 2:
        {
            std::string word = GameManager::getInstance()->getStringByKey("PlayerInfo",{"PlayerName"});
            word = word + "皇帝在大臣和全国百姓的期待下\n";
            word = word + "登上极位，\n";
            word = word + "宣布年号为" + GameManager::getInstance()->getStringByKey("PlayerInfo",{"CountryTitle"});
            word = word + "，\n一个新的局面即将展开。";
            words->setText(word);
            button->addTouchEventListener(this, toucheventselector(Dengji::step5Touched));
        }
            break;
        default:
            break;
    }
    
}
void Dengji::initStep4()
{
    auto step3 = _layer->getChildByName("step3");
    step3->setVisible(false);
    auto button = step3->getChildByName("next");
    button->setTouchEnabled(false);
    
    auto step4 = _layer->getChildByName("step4");
    step4->setVisible(true);
    button = step4->getChildByName("hahaha");
    button->setTouchEnabled(true);
    button->addTouchEventListener(this, toucheventselector(Dengji::step4Touched));
}




#pragma --mark touches
void Dengji::step1Touched(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto step1 = _layer->getChildByName("step1");
        if (_clicked == 0) {
            auto words = (Text*)step1->getChildByName("words");
            words->setText("小桂子在门外候着，请皇上前往登基。");
        }else{
            initStep2();
            initData();
        }
        _clicked++;
    }
}
void Dengji::step2Touched(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        _clicked = 0;
        initStep3();
        initData();
    }
}
void Dengji::step3Touched(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        initStep4();
        initData();
    }
}
void Dengji::step4Touched(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        _clicked = 1;
        initStep3();
        initData();
    }
}
void Dengji::step5Touched(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        if (_clicked == 1) {
            _clicked = 2;
            initStep3();
            initData();
        }else {
            auto scene = GameManager::createSceneWithTag(GameSceneHall);
            Director::getInstance()->replaceScene(TransitionFade::create(0.5f, scene));
        }
    }
}
