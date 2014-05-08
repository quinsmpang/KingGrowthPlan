//
//  StartScene.h
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#ifndef __KingGrowthPlan__StartScene__
#define __KingGrowthPlan__StartScene__

#include "cocos2d.h"
#include "cocostudio/Cocostudio.h"
#include "General.h"
#include "GameManager.h"

USING_NS_CC;
USING_NS_CS;
USING_NS_GUI;

class StartScene :  public Layer
{
public:
    static Scene* createScene();
    virtual bool init();
    CREATE_FUNC(StartScene);
    
    void NewGame(Object*,TouchEventType);
    void loadGame(Object*,TouchEventType);
};

#endif /* defined(__KingGrowthPlan__StartScene__) */
