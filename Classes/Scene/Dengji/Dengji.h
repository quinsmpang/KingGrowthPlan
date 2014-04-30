//
//  GenerateData.h
//  KingGrowthPlan
//  皇后和字辈
//  Created by 凌云 on 14-3-14.
//
//

#ifndef __KingGrowthPlan__Dengji__
#define __KingGrowthPlan__Dengji__

#include "cocos2d.h"
#include "cocostudio/Cocostudio.h"
#include "GameManager.h"
#include "General.h"
USING_NS_CC;
USING_NS_CS;
USING_NS_GUI;

class InitGameData;

class Dengji : public Layer
{
public:
    static Scene* createScene();
    virtual bool init();
    CREATE_FUNC(Dengji);
    
protected:
    void initData();
    
    void initStep1();
    void initStep2();
    void initStep3();
    void initStep4();

private:
    void step1Touched(Object*,TouchEventType);
    void step2Touched(Object*,TouchEventType);
    void step3Touched(Object*,TouchEventType);
    void step4Touched(Object*,TouchEventType);
    void step5Touched(Object*,TouchEventType);
private:
    int _initdataIndex;
    Widget* _layer;
    InitGameData* _data;
    int _clicked;
};

#endif /* defined(__KingGrowthPlan__GenerateData__) */
