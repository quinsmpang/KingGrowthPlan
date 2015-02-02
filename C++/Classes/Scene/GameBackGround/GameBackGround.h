//
//  GenerateData.h
//  KingGrowthPlan
//  皇后和字辈
//  Created by 凌云 on 14-3-14.
//
//

#ifndef __KingGrowthPlan__GenerateData__
#define __KingGrowthPlan__GenerateData__

#include "cocos2d.h"
#include "cocostudio/Cocostudio.h"
#include "General.h"
#include "GameManager.h"
USING_NS_CC;
USING_NS_CS;
USING_NS_GUI;

class GameSceneBackGround :  public Layer
{
public:
    static Scene* createScene();
    virtual bool init();
    CREATE_FUNC(GameSceneBackGround);
    
    void Touched(Object*,TouchEventType);
private:
    int _startTag;
};

#endif /* defined(__KingGrowthPlan__GenerateData__) */
