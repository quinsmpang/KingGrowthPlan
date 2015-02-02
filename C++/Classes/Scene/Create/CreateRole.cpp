//
//  CreateRole.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#include "CreateRole.h"
Scene* CreateRole::createScene()
{
    auto scene = Scene::create();
    auto layer = CreateRole::create();
    scene->addChild(layer);
    return scene;
}

bool CreateRole::init()
{
    if (!Layer::init()) {
        return false;
    }
    
    _layer = GUIReader::getInstance()->widgetFromJsonFile("Images/CreateScene_1.json");
    this->addChild(_layer);
    
    initData();
    
    initChoseLevel();
    
    return true;
}
void CreateRole::initData()
{
    srand(time(NULL));
    //皇帝属性
    auto manager = GameManager::getInstance();
    int tmp = 16;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Age"});
    tmp = 80 + rand() % 20;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Healthy"});
    tmp = 150 + rand() % 30;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Strength"});
    manager->setDeepIntValue(tmp,"PlayerInfo", {"StrengthMax"});
    tmp = 100;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Happyness"});
    tmp = 100 + rand() % 50;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Weiwang"});
    tmp = 20 + rand() % 10;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Wushu"});
    tmp = 20 + rand() % 10;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Wenxue"});
    tmp = 20 + rand() % 10;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Meili"});
    tmp = 20 + rand() % 10;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Zhihui"});
    tmp = 20 + rand() % 10;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Baoli"});
    tmp = 20 + rand() % 10;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Daode"});
    tmp = 20 + rand() % 10;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Caiyi"});
    tmp = 300 + rand() % 80;
    manager->setDeepIntValue(tmp,"PlayerInfo", {"Shouming"});
    manager->save();
    
    
}
void CreateRole::initChoseLevel()
{
    auto choselevel = _layer->getChildByName("choselevel")->getChildByName("ImageView_38");
    for (int i = 40; i <= 43; i++) {
        auto name = __String::createWithFormat("Button_%d",i)->getCString();
        auto tmp = choselevel->getChildByName(name);
        tmp->setTouchEnabled(true);
        tmp->addTouchEventListener(this, toucheventselector(CreateRole::choseLevel));
    }
    _layer->getChildByName("step1")->setEnabled(false);
}
void CreateRole::initName()
{
    auto next = _layer->getChildByName("step1")->getChildByName("Button_63");
    _layer->getChildByName("step1")->setEnabled(true);
    next->setTouchEnabled(true);
    next->addTouchEventListener(this, toucheventselector(CreateRole::nextStep));
}
void CreateRole::initCharTest()
{
    _questionIndex = 0;
    auto dict = dynamic_cast<__Dictionary*>(GameManager::getInstance()->getWordByKey("Questions"));
    auto indexs = General::getRandomNumbersIn(4, dict->count(), 0);
    auto keys = dict->allKeys();
    
    for (int i = 0; i < indexs.size(); i++) {
        int val = indexs.at(i);
        auto key = ((__String*)(keys->getObjectAtIndex(val)) )->_string;
        auto item = dynamic_cast<__Dictionary*>(dict->objectForKey(key));
        _questions.pushBack(item);
    }
    
    auto step2 = _layer->getChildByName("step2");
    for (int i = 1; i <= 3; i++) {
        auto str = __String::createWithFormat("chose%d",i);
        auto button = step2->getChildByName(str->getCString());
        button->setTouchEnabled(true);
        button->addTouchEventListener(this, toucheventselector(CreateRole::questionAnswer));
    }
}
void CreateRole::initZibei()
{
    auto step3 = _layer->getChildByName("step3");
    auto dict = dynamic_cast<__Dictionary*>(GameManager::getInstance()->getWordByKey("MiddleName"));
    auto indexs = General::getRandomNumbersIn(40, dict->count(), 0);
    auto keys = dict->allKeys();
    auto childrens = step3->getChildByName("container")->getChildren();
    for (int i = 0; i < indexs.size(); i++) {
        int val = indexs.at(i);
        auto key = ((__String*)(keys->getObjectAtIndex(val)) )->_string;
        auto item = dict->valueForKey(key);
        auto button = (Button*)childrens.at(i);
        button->setTitleText(item->_string);
        button->setTouchEnabled(true);
        button->addTouchEventListener(this, toucheventselector(CreateRole::zibeichosed));
    }
}
void CreateRole::initEmpress()
{
    auto step4 = _layer->getChildByName("step4");
    auto reflesh = (Button*)(step4->getChildByName("reflesh"));
    reflesh->setTouchEnabled(true);
    reflesh->addTouchEventListener(this, toucheventselector(CreateRole::refleshName));
    auto sure = (Button*)(step4->getChildByName("sure"));
    sure->setTouchEnabled(true);
    sure->addTouchEventListener(this, toucheventselector(CreateRole::startGame));
}
#pragma --mark touches
void CreateRole::choseLevel(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        int tag = ((Widget*)target)->getTag() - 8;
        GameManager::getInstance()->setDeepIntValue(tag, "PlayerInfo", {"GameLevel"});
        GameManager::getInstance()->save();
        _layer->getChildByName("choselevel")->removeFromParent();
        
        initName();
        _layer->getChildByName("step1")->setVisible(true);
    }
}
void CreateRole::nextStep(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto nameview = (TextField*)( _layer->getChildByName("step1")->getChildByName("ImageView_58")->getChildByName("TextField_57") );
        auto titleview = (TextField*)( _layer->getChildByName("step1")->getChildByName("ImageView_61")->getChildByName("TextField_62") );
        auto name = nameview->getStringValue();
        auto title = titleview->getStringValue();
        if (name.size() == 0 || title.size() == 0) {
            CCLOG("name or title is empty");
            name = "王麻子";
            title = "元鼎";
        }
        CCLOG("name:%s, title:%s",name.c_str(),title.c_str());
        GameManager::getInstance()->setDeepStringValue(name, "PlayerInfo", {"PlayerName"});
        GameManager::getInstance()->setDeepStringValue(title, "PlayerInfo", {"CountryTitle"});
        GameManager::getInstance()->save();
        
        _layer->getChildByName("step1")->removeFromParent();
        
        
        auto step2 = _layer->getChildByName("step2");
        initCharTest();
        setQuestion();
        step2->setVisible(true);
    }
}
void CreateRole::questionAnswer(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto nodetarget = (Node*)target;
        int chose = nodetarget->getTag() - 6;   //1-3;
        if (chose == 1) {
            int zhihui = GameManager::getInstance()->getIntByKey("PlayerInfo", {"Zhihui"});
            int meili = GameManager::getInstance()->getIntByKey("PlayerInfo", {"Meili"});
            GameManager::getInstance()->setDeepIntValue(zhihui + 2, "PlayerInfo", {"Zhihui"});
            GameManager::getInstance()->setDeepIntValue(meili + 2, "PlayerInfo", {"Meili"});
        }else if(chose == 3){
            int Wushu = GameManager::getInstance()->getIntByKey("PlayerInfo", {"Wushu"});
            int Baoli = GameManager::getInstance()->getIntByKey("PlayerInfo", {"Baoli"});
            GameManager::getInstance()->setDeepIntValue(Wushu + 2, "PlayerInfo", {"Wushu"});
            GameManager::getInstance()->setDeepIntValue(Baoli + 2, "PlayerInfo", {"Baoli"});
        }
        if (_questionIndex <= 3) {
            setQuestion();
        }else{
            chooseZeBei();
        }
    }
}
void CreateRole::zibeichosed(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto button = (Button*)target;
        auto str = button->getTitleText();
        GameManager::getInstance()->setDeepStringValue(str, "PlayerInfo", {"Zibei"});
        GameManager::getInstance()->save();
        
        
        _layer->getChildByName("step3")->removeFromParent();
        
        auto step4 = _layer->getChildByName("step4");
        step4->setVisible(true);
        initEmpress();
    }
}
void CreateRole::refleshName(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto button = (Button*)(_layer->getChildByName("step4")->getChildByName("Button_100_0"));
        std::string name = "";
        do{
            name = General::getRandomName(false, false);
        }while (name == button->getTitleText());
        button->setTitleText(name);
    }
}
void CreateRole::startGame(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto button = (Button*)(_layer->getChildByName("step4")->getChildByName("Button_100_0"));
        auto name = button->getTitleText();
        
        srand(time(NULL));
        Feizi f;
        f.age = 16;  f.love = 15 + rand() % 10; f.exp = 0;  f.name = name;
        f.title = "皇后"; f.ability = 80 + rand() % 20; f.illness = 0; f.status = 0;
        f.image = GameManager::getInstance()->getRandomImage(0);
        GameManager::getInstance()->setFeiZi(f);
        
        auto scene = GameManager::createSceneWithTag(GameSceneDengji);
        Director::getInstance()->replaceScene(TransitionFade::create(0.5f, scene));
        
    }
}
#pragma --mark functions
void CreateRole::setQuestion()
{
    auto step2 = _layer->getChildByName("step2");
    auto dict = _questions.at(_questionIndex++);
    auto question = (Text*)step2->getChildByName("question");
    question->setText(dict->valueForKey("Question")->_string);
    auto chose1 = (Text*)step2->getChildByName("chose1label");
    chose1->setText(dict->valueForKey("Chose1")->_string);
    auto chose2 = (Text*)step2->getChildByName("chose2label");
    chose2->setText(dict->valueForKey("Chose2")->_string);
    auto chose3 = (Text*)step2->getChildByName("chose3label");
    chose3->setText(dict->valueForKey("Chose3")->_string);
}
void CreateRole::chooseZeBei()
{
    _layer->getChildByName("step2")->removeFromParent();
    auto step3 = _layer->getChildByName("step3");
    step3->setVisible(true);
    initZibei();
}