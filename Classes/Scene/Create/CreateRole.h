//
//  CreateRole.h
//  KingGrowthPlan
//   取名，年号
//  Created by 凌云 on 14-3-14.
//
//

#ifndef __KingGrowthPlan__CreateRole__
#define __KingGrowthPlan__CreateRole__

#include "cocos2d.h"
#include "cocostudio/Cocostudio.h"
#include "gui/CocosGui.h"
#include "General.h"
#include "GameManager.h"
USING_NS_CC;
USING_NS_CS;
USING_NS_GUI;

class CreateRole : public Layer, public TextFieldDelegate
{
public:
    static Scene* createScene();
    virtual bool init();
    CREATE_FUNC(CreateRole);
    
protected:
    void initData();
    void initChoseLevel();
    void initName();
    void initCharTest();
    void initZibei();
    void initEmpress();
    
    void choseLevel(Object*,TouchEventType);
    void nextStep(Object*,TouchEventType);
    void questionAnswer(Object*,TouchEventType);
    void zibeichosed(Object*,TouchEventType);
    void refleshName(Object*,TouchEventType);
    void startGame(Object*,TouchEventType);
private:
    void setQuestion();
    void chooseZeBei();
    
private:
    Widget* _layer;
    
    Vector<__Dictionary*>_questions;
    int _questionIndex;
};

#endif /* defined(__KingGrowthPlan__CreateRole__) */
