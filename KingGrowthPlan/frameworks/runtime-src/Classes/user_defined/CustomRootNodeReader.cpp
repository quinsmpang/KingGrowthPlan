
#include "CustomRootNodeReader.h"
#include "CustomRootNode.h"
#include "editor-support/cocostudio/ActionTimeline/CSLoader.h"

cocos2d::Node* CustomRootNodeReader::createNodeWithFlatBuffers(const flatbuffers::Table* nodeOptions)
{
	CustomRootNode* node = CustomRootNode::create(_touchLocator,_clickLocator,_eventLocator);

	setPropsWithFlatBuffers(node, nodeOptions);

	return node;
}

static CustomRootNodeReader* customRootNodeReader = nullptr;
CustomRootNodeReader* CustomRootNodeReader::getInstance()
{
    if (customRootNodeReader == nullptr){
        customRootNodeReader = new CustomRootNodeReader();
        
        auto factory = cocos2d::ObjectFactory::getInstance();
        cocos2d::ObjectFactory::TInfo t;
        t._func = []()->cocos2d::Ref*{return customRootNodeReader;};
        t._class = "CustomRootNodeReader";
        
        factory->registerType(t);
    }
	return customRootNodeReader;
}

void CustomRootNodeReader::resetLocator()
{
    _touchLocator = nullptr;
    _clickLocator = nullptr;
    _eventLocator = nullptr;
}