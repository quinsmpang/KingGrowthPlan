//
//  Hall.h
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#ifndef __KingGrowthPlan__Hall__
#define __KingGrowthPlan__Hall__

#include "cocos2d.h"
#include "cocostudio/Cocostudio.h"
#include "General.h"
#include "GameManager.h"
#include "HallModel.h"
USING_NS_CC;
USING_NS_CS;
USING_NS_GUI;

class Hall :  public Layer
{
public:
    static Scene* createScene();
    virtual bool init();
    CREATE_FUNC(Hall);
    
public:
    void initStatus(ValueMap);
    void showEffect(std::string str,clickType type);
    Animation* createAnimation(clickType type,std::string&);
    void showNextTime();
    
    void showTime(std::string date, std::string time);
    
protected:
    void initBtn();
    
protected:
    void hallBtnClicked(Object*,TouchEventType);
    void hideEffect(Object*,TouchEventType);
    void hideNextTime();
    
private:
    Widget* _layer;
    HallModel* _model;
    int _clickIndex;
};
#endif /* defined(__KingGrowthPlan__Hall__) */
