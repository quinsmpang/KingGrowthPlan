//
//  General.h
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#ifndef __KingGrowthPlan__General__
#define __KingGrowthPlan__General__

#define USING_NS_CS     using namespace cocostudio
#define USING_NS_GUI    using namespace gui

#include "cocos2d.h"
#include "cocostudio/CocoStudio.h"
#include "GameManager.h"
USING_NS_CC;
USING_NS_CS;

class General
{
public:
    static std::vector<int> getRandomNumbersIn(int num,int max,int min);
    static std::string getRandomName(bool isBoy, bool isChildren);
    static Object* getObjectAtIndex(__Dictionary* dict, int index);
    static std::string getStringAtIndex(__Dictionary* dict, int index);
};
#endif /* defined(__KingGrowthPlan__General__) */
