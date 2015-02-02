//
//  General.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-14.
//
//

#include "General.h"

std::vector<int> General::getRandomNumbersIn(int num, int max, int min = 0)
{
    srand(time(NULL));
    std::vector<int> arr;
    for (int i = 0; i < num; i++) {
        int val = rand() % (max - min) + min;
        arr.push_back(val);
    }
    return arr;
}
std::string General::getRandomName(bool isBoy, bool isChildren)
{
    auto firstNamedict = (__Dictionary*)(GameManager::getInstance()->getWordByKey("FirstName"));
    auto midNamedict = (__Dictionary*)(GameManager::getInstance()->getWordByKey("MiddleName"));
    auto lastNameboydict = (__Dictionary*)(GameManager::getInstance()->getWordByKey("LastNameBoy"));
    auto lastNamegirldict = (__Dictionary*)(GameManager::getInstance()->getWordByKey("LastNameGirl"));
    
    int randindex = rand() % firstNamedict->count();
    auto name = General::getStringAtIndex(firstNamedict, randindex);
    
    if (isChildren) {
        auto midName = GameManager::getInstance()->getStringByKey("Zibei");
        name += midName;
    }else {
        randindex = rand() % midNamedict->count();
        auto midName = General::getStringAtIndex(midNamedict, randindex);
        name += midName;
    }
    
    if (isBoy) {
        randindex = rand() % lastNameboydict->count();
        auto lastname = General::getStringAtIndex(lastNameboydict, randindex);
        name += lastname;
    }else {
        randindex = rand() % lastNamegirldict->count();
        auto lastname = General::getStringAtIndex(lastNamegirldict, randindex);
        name += lastname;
    }
    return name;
}

Object* General::getObjectAtIndex(__Dictionary* dict, int index)
{
    auto keys = dict->allKeys();
    if (index >= keys->count()) {
        assert("index is larger than count");
    }
    auto key = (__String*)(keys->getObjectAtIndex(index));
    return dict->objectForKey(key->getCString());
}
std::string General::getStringAtIndex(__Dictionary* dict, int index)
{
    auto keys = dict->allKeys();
    if (index >= keys->count()) {
        assert("index is larger than count");
    }
    auto key = (__String*)(keys->getObjectAtIndex(index));
    return dict->valueForKey(key->getCString())->_string;
}