#ifndef __cocos2d_libs__CustomRootNodeReader__
#define __cocos2d_libs__CustomRootNodeReader__

#include "cocos2d.h"
#include "cocostudio/CocosStudioExport.h"
#include "cocostudio/WidgetReader/NodeReader/NodeReader.h"
#include "CustomRootNode.h"
class CustomRootNodeReader : public cocostudio::NodeReader
{        
public:
	static CustomRootNodeReader* getInstance();
    void resetLocator();
    
	cocos2d::Node* createNodeWithFlatBuffers(const flatbuffers::Table* nodeOptions);

	void setTouchLocator(CustomRootNode::TouchCallbackLocator &locator){_touchLocator = locator;}
	void setClickLocator(CustomRootNode::ClickCallbackLocator &locator){_clickLocator = locator;}
	void setEventLocator(CustomRootNode::EventCallbackLocator &locator){_eventLocator = locator;}

private:
	CustomRootNode::TouchCallbackLocator _touchLocator;
	CustomRootNode::ClickCallbackLocator _clickLocator;
	CustomRootNode::EventCallbackLocator _eventLocator;
};

#endif /* defined(__cocos2d_libs__CustomRootNodeReader__) */