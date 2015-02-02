//
//  InitGameData.h
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-19.
//
//

#ifndef __KingGrowthPlan__InitGameData__
#define __KingGrowthPlan__InitGameData__

#include "cocos2d.h"
#include "GameManager.h"
#include "General.h"

USING_NS_CC;

class InitGameData
{
public:
    InitGameData();
    
    void initHougong();
    void initGuanyuan();
    void initChengshi();
    void initCountryPro();
    void initOthers();

private:
    GameManager* _manager;
};
#endif /* defined(__KingGrowthPlan__InitGameData__) */
