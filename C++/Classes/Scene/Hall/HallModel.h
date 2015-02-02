//
//  HallModel.h
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-21.
//
//

#ifndef __KingGrowthPlan__HallModel__
#define __KingGrowthPlan__HallModel__

#include "cocos2d.h"
#include "GameManager.h"
#include "General.h"
class GameManager;

enum clickType{
    HALL_NONE = 0,
    HALL_BAIJUYUAN = 1,
    HALL_YUSHUYUAN = 2,
    HALL_WUDAOCHANG = 3,
    HALL_CININGGONG = 4,
    HALL_QINGQIGE = 5,
    HALL_JINRONGDIAN = 6,
};


USING_NS_CC;

class Hall;

class HallModel
{
public:
    HallModel();
    void initWithView(Hall*);
    void clickAt(std::string name);
    void updateTime();
    void checkEvent();
    
protected:
    std::string getDate();
    std::string getTime();
    
    std::string upgrade(std::string type,std::string propname);
    CC_SYNTHESIZE(ValueMap, _status, Status);
private:
    Hall* _view;
    GameManager* _manager;
};

#endif /* defined(__KingGrowthPlan__HallModel__) */
