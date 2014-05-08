//
//  InitGameData.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-19.
//
//

#include "InitGameData.h"

InitGameData::InitGameData()
{
    _manager = GameManager::getInstance();
}
void InitGameData::initHougong()
{
    srand(time(NULL));
    Feizi f;
    f.age = 16;  f.love = 15 + rand() % 10; f.exp = 0;  f.name = General::getRandomName(false, false);
    f.ability = 75 + rand() % 20; f.illness = 0; f.status = 0;  f.title = "修仪";
    f.image = _manager->getRandomImage(0);
    
    _manager->setFeiZi(f);
}
void InitGameData::initCountryPro()
{
    srand(time(NULL));
    int tmpval = 50000000 + rand() % 100000;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"金钱"});
    tmpval = 90000000 + rand() % 600000;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"粮食"});
    tmpval = 130000 + rand() % 10000;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"朴刀"});
    tmpval = 50000 + rand() % 10000;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"皮甲"});
    tmpval = 30000 + rand() % 10000;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"战马"});
    tmpval = 10000 + rand() % 10000;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"铁炮"});
    tmpval = 15 + rand() % 5;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"闲人"});
    tmpval = 80000 + rand() % 5000;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"民夫"});
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"可用民夫"});
    tmpval = 130000 + rand() % 5000;
    _manager->setDeepIntValue(tmpval, "CountryInfo", {"士兵"});
    
    _manager->setDeepIntValue(0, "CountryInfo", {"散兵营"});
    _manager->setDeepIntValue(0, "CountryInfo", {"护卫营"});
    _manager->setDeepIntValue(0, "CountryInfo", {"效义营"});
    _manager->setDeepIntValue(0, "CountryInfo", {"神枢营"});
    _manager->setDeepIntValue(0, "CountryInfo", {"神机营"});
    _manager->setDeepIntValue(25, "CountryInfo", {"税率"});
    _manager->setDeepIntValue(50, "CountryInfo", {"训练"});
    _manager->setDeepIntValue(0, "CountryInfo", {"朴刀操作"});
    _manager->setDeepIntValue(0, "CountryInfo", {"皮甲操作"});
    _manager->setDeepIntValue(0, "CountryInfo", {"战马操作"});
    _manager->setDeepIntValue(0, "CountryInfo", {"铁炮操作"});
    _manager->setDeepIntValue(0, "CountryInfo", {"训练周期"});
    _manager->setDeepIntValue(0, "CountryInfo", {"安全检视"});
    _manager->setDeepIntValue(0, "CountryInfo", {"调查经费"});
    _manager->setDeepIntValue(0, "CountryInfo", {"调查经费数值"});
    _manager->setDeepIntValue(81221, "CountryInfo", {"犯人"});
    
    int level = _manager->getIntByKey("PlayerInfo", {"GameLevel"});
    switch (level) {
        case 0:
            tmpval = 60000000 + rand() % 100000;
            _manager->setDeepIntValue(tmpval, "CountryInfo", {"金钱"});
            break;
        case 1:
            tmpval = 50000000 + rand() % 100000;
            _manager->setDeepIntValue(tmpval, "CountryInfo", {"金钱"});
            break;
        case 2:
            tmpval = 40000000 + rand() % 100000;
            _manager->setDeepIntValue(tmpval, "CountryInfo", {"金钱"});
            break;
        case 3:
            tmpval = 30000000 + rand() % 100000;
            _manager->setDeepIntValue(tmpval, "CountryInfo", {"金钱"});
            break;
            
        default:
            break;
    }
}
void InitGameData::initChengshi()
{
    
}
void InitGameData::initGuanyuan()
{
    
}
void InitGameData::initOthers()
{
    _manager->setDeepStringValue("1", "isSuccess");
    
}