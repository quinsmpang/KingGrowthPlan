//
//  GameManager.cpp
//  KingGrowthPlan
//
//  Created by 凌云 on 14-3-18.
//
//

#include "GameManager.h"

static GameManager* _manager = nullptr;
GameManager* GameManager::getInstance()
{
    if (_manager == nullptr) {
        _manager = new GameManager();
    }
    return _manager;
}
void GameManager::testOnce()
{
    std::string arr[14] = {"宰相", "中央军", "吏部尚书", "吏部侍郎", "户部尚书", "户部侍郎", "礼部尚书", "礼部侍郎", "兵部尚书", "兵部侍郎", "刑部尚书", "刑部侍郎", "工部尚书", "工部侍郎"};
    auto dict = __Dictionary::create();
    auto filepath = FileUtils::getInstance()->fullPathForFilename("InitalConfig.plist");
    auto localconfig = Dictionary::createWithContentsOfFile(filepath.c_str());
    
    for (int i = 0; i < 14; i++) {
        std::string val = arr[i];
//        std::string key = __String::createWithFormat("Item%d",i)->_string;
        std::string key = val;
        auto item = __Dictionary::create();
        item->setObject(__String::create(""), "name");
        item->setObject(__String::create(val), "title");
        item->setObject(__String::create(""), "juewei");
        item->setObject(__String::create(""), "age");
        item->setObject(__String::create(""), "zhihui");
        item->setObject(__String::create(""), "wushu");
        item->setObject(__String::create(""), "qinglian");
        item->setObject(__String::create(""), "yexin");
        item->setObject(__String::create(""), "zhongcheng");
        item->setObject(__String::create(""), "exp");
        
        
        
        dict->setObject(item, key);
    }
    localconfig->setObject(dict, "Officals");
    filepath = FileUtils::getInstance()->getWritablePath();
    filepath += "/InitalConfig.plist";
    localconfig->writeToFile(filepath.c_str());
}
GameManager::GameManager()
{
    auto filepath = FileUtils::getInstance()->getWritablePath();
    CCLOG("config path: %s",filepath.c_str());
    filepath += "/GameConfig.plist";
    _gameConfig = Dictionary::createWithContentsOfFile(filepath.c_str());
    
//    testOnce();
    
    
    if (_gameConfig == nullptr || _gameConfig->count() == 0) {
        initialGameData();
    }else {
        filepath = FileUtils::getInstance()->fullPathForFilename("InitalConfig.plist");
        auto localconfig = Dictionary::createWithContentsOfFile(filepath.c_str());
        if (localconfig->valueForKey("Version")->intValue() > getIntByKey("Version")) {
            initialGameData();
        }else {
            CC_SAFE_RETAIN(_gameConfig);    
        }
    }
}
Scene* GameManager::createSceneWithTag(GameSceneTag tag)
{
    Scene* scene = nullptr;
    switch (tag) {
        case GameSceneStart:
            scene = StartScene::createScene();
            break;
        case GameSceneBg:
            scene = GameSceneBackGround::createScene();
            break;
        case GameSceneCreate:
            scene = CreateRole::createScene();
            break;
        case GameSceneDengji:
            scene = Dengji::createScene();
            break;
        case GameSceneHall:
            scene = Hall::createScene();
            break;
        default:
            assert("unknow scenetag in GameManger::createSceneWithTag");
            break;
    }
    return scene;
}
void GameManager::save()
{
    auto filepath = FileUtils::getInstance()->getWritablePath();
    filepath += "GameConfig.plist";
    _gameConfig->writeToFile(filepath.c_str());
}
void GameManager::initialGameData()
{
    CC_SAFE_RELEASE_NULL(_gameConfig);
    auto filepath = FileUtils::getInstance()->fullPathForFilename("InitalConfig.plist");
    _gameConfig = Dictionary::createWithContentsOfFile(filepath.c_str());
    filepath = FileUtils::getInstance()->getWritablePath();
    filepath += "GameConfig.plist";
    _gameConfig->writeToFile(filepath.c_str());
    CC_SAFE_RETAIN(_gameConfig);
}

std::string GameManager::getStringByKey(std::string key, std::initializer_list<std::string>argslist)
{
    std::vector<std::string> argsArr;
    argsArr.push_back(key);
    for(auto item : argslist)
    {
        argsArr.push_back(item);
    }
    auto dict = _gameConfig;
    while (argsArr.size() > 1) {
        auto item = argsArr.at(0);
        argsArr.erase(argsArr.begin());
        dict = (__Dictionary*)dict->objectForKey(item);
    }
    auto item = argsArr.at(0);
    argsArr.pop_back();
    auto value = dict->valueForKey(item);
    return value->_string;
}
int GameManager::getIntByKey(std::string key, std::initializer_list<std::string>argslist)
{
    std::vector<std::string> argsArr;
    argsArr.push_back(key);
    for(auto item : argslist)
    {
        argsArr.push_back(item);
    }
    auto dict = _gameConfig;
    while (argsArr.size() > 1) {
        auto item = argsArr.at(0);
        argsArr.erase(argsArr.begin());
        dict = (__Dictionary*)dict->objectForKey(item);
    }
    auto item = argsArr.at(0);
    argsArr.pop_back();
    auto value = dict->valueForKey(item);
    return value->intValue();
}
float GameManager::getFloatByKey(std::string key, std::initializer_list<std::string>argslist)
{
    std::vector<std::string> argsArr;
    argsArr.push_back(key);
    for(auto item : argslist)
    {
        argsArr.push_back(item);
    }
    auto dict = _gameConfig;
    while (argsArr.size() > 1) {
        auto item = argsArr.at(0);
        argsArr.erase(argsArr.begin());
        dict = (__Dictionary*)dict->objectForKey(item);
    }
    auto item = argsArr.at(0);
    argsArr.pop_back();
    auto value = dict->valueForKey(item);
    return value->floatValue();
}
ValueMap GameManager::getMapByKey(std::string key, std::initializer_list<std::string>argslist)
{
    std::vector<std::string> argsArr;
    argsArr.push_back(key);
    for(auto item : argslist)
    {
        argsArr.push_back(item);
    }
    auto dict = _gameConfig;
    while (argsArr.size() > 1) {
        auto item = argsArr.at(0);
        argsArr.erase(argsArr.begin());
        dict = (__Dictionary*)dict->objectForKey(item);
    }
    auto item = argsArr.at(0);
    argsArr.pop_back();
    
    dict = dynamic_cast<__Dictionary*>(dict->objectForKey(item) );
    auto keys = dict->allKeys();
    Object* pObject = nullptr;
    ValueMap maps;
    CCARRAY_FOREACH(keys, pObject)
    {
        std::string key = ((__String*)pObject)->_string;
        auto val = dict->valueForKey(key)->_string;
        maps[key] = val;
    }
    return maps;
}
__Dictionary* GameManager::getDictionaryByKey(std::string key, std::initializer_list<std::string>argslist)
{
    std::vector<std::string> argsArr;
    argsArr.push_back(key);
    for(auto item : argslist)
    {
        argsArr.push_back(item);
    }
    auto dict = _gameConfig;
    while (argsArr.size() > 1) {
        auto item = argsArr.at(0);
        argsArr.erase(argsArr.begin());
        dict = (__Dictionary*)dict->objectForKey(item);
    }
    auto item = argsArr.at(0);
    argsArr.pop_back();
    auto value = dict->objectForKey(item);
    return (__Dictionary*)value;
}

    
void GameManager::setDeepIntValue(int value, std::string key1, std::initializer_list<std::string>argslist)
{
    std::vector<std::string> argsArr;
    argsArr.push_back(key1);
    for(auto item : argslist)
    {
        argsArr.push_back(item);
    }
    auto dict = _gameConfig;
    while (argsArr.size() > 1) {
        auto item = argsArr.at(0);
        argsArr.erase(argsArr.begin());
        dict = (__Dictionary*)dict->objectForKey(item);
    }
    auto item = argsArr.at(0);
    argsArr.pop_back();
    auto str = __String::createWithFormat("%d", value);
    dict->setObject(str, item);
    save();
}
void GameManager::setDeepFloatValue(float value, std::string key1, std::initializer_list<std::string>argslist)
{
    std::vector<std::string> argsArr;
    argsArr.push_back(key1);
    for(auto item : argslist)
    {
        argsArr.push_back(item);
    }
    auto dict = _gameConfig;
    while (argsArr.size() > 1) {
        auto item = argsArr.at(0);
        argsArr.erase(argsArr.begin());
        dict = (__Dictionary*)dict->objectForKey(item);
    }
    auto item = argsArr.at(0);
    argsArr.pop_back();
    auto str = __String::createWithFormat("%f", value);
    dict->setObject(str, item);
    save();
}
void GameManager::setDeepStringValue(std::string val, std::string key1, std::initializer_list<std::string>argslist)
{
    std::vector<std::string> argsArr;
    argsArr.push_back(key1);
    for(auto item : argslist)
    {
        argsArr.push_back(item);
    }
    auto dict = _gameConfig;
    while (argsArr.size() > 1) {
        auto item = argsArr.at(0);
        argsArr.erase(argsArr.begin());
        dict = (__Dictionary*)dict->objectForKey(item);
    }
    auto item = argsArr.at(0);
    argsArr.pop_back();
    auto str = __String::create(val);
    dict->setObject(str, item);
    save();
}

void GameManager::setFeiZi(Feizi feizi)
{
    if (feizi.title == "宫女") {
        return;
    }
    setDeepIntValue(feizi.ability, "Harem", {feizi.title, "ability"});
    setDeepIntValue(feizi.age, "Harem", {feizi.title, "age"});
    setDeepIntValue(feizi.exp, "Harem", {feizi.title, "exp"});
    setDeepIntValue(feizi.illness, "Harem", {feizi.title, "illness"});
    setDeepIntValue(feizi.love, "Harem", {feizi.title, "love"});
    setDeepIntValue(feizi.status, "Harem", {feizi.title, "status"});
    setDeepStringValue(feizi.name, "Harem", {feizi.title, "name"});
    setDeepStringValue(feizi.image, "Harem", {feizi.title, "image"});
    save();
}
bool GameManager::hasSame(std::string image)
{
    auto dict = (__Dictionary*)_gameConfig->objectForKey("Harem");
    for(int i = 0;i < dict->count();i++)
    {
        auto item = (__Dictionary*)General::getObjectAtIndex(dict, i);
        auto tmpstr = item->valueForKey("image")->_string;
        if (tmpstr == image) {
            return true;
        }
    }
    return false;
}
std::string GameManager::getRandomImage(int type)
{
    __Dictionary* dict = nullptr;
    auto filepath = FileUtils::getInstance()->fullPathForFilename("ManImage.plist");
    auto root = __Dictionary::createWithContentsOfFile(filepath.c_str());
    switch (type) {
        case 0:
            dict = (__Dictionary*)root->objectForKey("meiren");
            break;
        case 1:
            dict = (__Dictionary*)root->objectForKey("nanchong");
            break;
        case 2:
            dict = (__Dictionary*)root->objectForKey("qinglou");
            break;
        case 3:
            dict = (__Dictionary*)root->objectForKey("waiyumeiren");
            break;
        default:
            assert("wrong type");
            break;
    }
    std::string image = "";
    do {
        int index = rand() % dict->count();
        image = General::getStringAtIndex(dict, index);
    } while (hasSame(image));
    return image;
}
#pragma --mark words
Object* GameManager::getWordByKey(std::string key)
{
    auto filepath = FileUtils::getInstance()->fullPathForFilename("Words.plist");
    auto dict = __Dictionary::createWithContentsOfFile(filepath.c_str());
    return dict->objectForKey(key);
}

