//
//  StartScene.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#include "StartScene.h"

Scene* StartScene::createScene()
{
    auto scene = Scene::create();
    auto layer = StartScene::create();
    scene->addChild(layer);
    return scene;
}

bool StartScene::init()
{
    if (!Layer::init()) {
        return false;
    }
    auto layer = GUIReader::getInstance()->widgetFromJsonFile("Images/StartScene_1.json");
    this->addChild(layer);
    
    auto newgame = layer->getChildByName("Button_24");
    newgame->addTouchEventListener(this, toucheventselector(StartScene::NewGame));
    
    return true;
}
void StartScene::NewGame(Object* target, TouchEventType type)
{
    if (type == TOUCH_EVENT_ENDED) {
        auto scene = GameManager::createSceneWithTag(GameSceneBg);
        Director::getInstance()->replaceScene(TransitionFade::create(0.5f, scene));
//        Director::getInstance()->replaceScene(scene);
    }
}