//
//  GenerateData.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#include "GameBackGround.h"

Scene* GameSceneBackGround::createScene()
{
    auto scene = Scene::create();
    auto layer = GameSceneBackGround::create();
    scene->addChild(layer);
    return scene;
}

bool GameSceneBackGround::init()
{
    if (!Layer::init()) {
        return false;
    }
    
    GameManager::getInstance()->initialGameData();
    
    auto layer = GUIReader::getInstance()->widgetFromJsonFile("Images/GameSceneBG_1.json");
    this->addChild(layer);
    
    auto bg = layer->getChildByName("bg");
    bg->setTouchEnabled(true);
    bg->addTouchEventListener(this, toucheventselector(GameSceneBackGround::Touched));
    _startTag = 4;
    return true;
}
void GameSceneBackGround::Touched(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto widget = (Widget*)target;
        auto outact = Sequence::create(FadeOut::create(0.5f), RemoveSelf::create(), NULL);
        auto inact = Sequence::create(Show::create(), FadeIn::create(0.5f), NULL);
        widget->getParent()->getChildByTag(_startTag++)->runAction(outact);
        if (_startTag <= 7) {
            widget->getParent()->getChildByTag(_startTag)->runAction(inact);
        }else {
            auto scene = GameManager::createSceneWithTag(GameSceneCreate);
            Director::getInstance()->replaceScene(TransitionFade::create(0.5f, scene));
        }
    }
}