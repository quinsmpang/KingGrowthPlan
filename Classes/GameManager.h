//
//  GameManager.h
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-18.
//
//

#ifndef __KingGrowthPlan__GameManager__
#define __KingGrowthPlan__GameManager__

#include "cocos2d.h"
USING_NS_CC;

#include "StartScene.h"
#include "GameBackGround.h"
#include "CreateRole.h"
#include "Dengji.h"
#include "Hall.h"

typedef enum{
    GameSceneStart = 1,
    GameSceneBg,
    GameSceneCreate,
    GameSceneRandomData,
    GameSceneDengji,
    GameSceneHall,
    
}GameSceneTag;

struct Feizi{
    int ability,age,exp,illness,love,status;
    std::string name,image,title;
};
struct Dachen{
    int qinglian,wushu,yexin,zhongcheng,age,exp,zhihui;
    std::string juewei,name,title;
};

class GameManager {
public:
    GameManager();
    
    static GameManager* getInstance();
    static Scene* createSceneWithTag(GameSceneTag);
    
    void testOnce();
    
    void initialGameData();
    
    std::string getStringByKey(std::string key, std::initializer_list<std::string>argslist = {});
    int getIntByKey(std::string key, std::initializer_list<std::string>argslist = {});
    float getFloatByKey(std::string key, std::initializer_list<std::string>argslist = {});
    ValueMap getMapByKey(std::string key, std::initializer_list<std::string>argslist = {});
    __Dictionary* getDictionaryByKey(std::string key, std::initializer_list<std::string>argslist = {});
    
    void setDeepIntValue(int value, std::string key1, std::initializer_list<std::string>argslist = {});
    void setDeepFloatValue(float value, std::string key1, std::initializer_list<std::string>argslist = {});
    void setDeepStringValue(std::string val, std::string key1, std::initializer_list<std::string>argslist = {});
    
    void save();
    
    void setFeiZi(Feizi feizi);
    std::string getRandomImage(int type);
    
    Object* getWordByKey(std::string key);
private:
    __Dictionary* _gameConfig;
    bool hasSame(std::string image);
};
#endif /* defined(__KingGrowthPlan__GameManager__) */
