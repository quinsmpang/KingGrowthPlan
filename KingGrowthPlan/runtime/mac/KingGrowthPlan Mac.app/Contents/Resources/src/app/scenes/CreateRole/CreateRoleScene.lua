
local CreateRoleScene = class("CreateRoleScene", function()
    return display.newScene("CreateRoleScene")
end)

function CreateRoleScene:ctor()
	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:resetLocator()
	reader:setClickLocator(handler(self, self.getClickCallBack))

	local widget = cc.CSLoader:createNode("CreateRole.csb")
	self:addChild(widget)
	self._rootNode = widget
end
function CreateRoleScene:getClickCallBack(name)
	local callback = function ()  end
	if name == "chooseLevel" then
		callback = handler(self, self.chooseLevel)
	end
	return callback
end
function CreateRoleScene:onEnter()
	print("CreateRoleScene:onEnter")
	local cache = ccs.ActionTimelineCache:getInstance()
	local timeLine = cache:createActionWithFlatBuffersFile("CreateRole.csb")
	timeLine:setTimeSpeed(1/2)
	self:runAction(timeLine)
	timeLine:gotoFrameAndPlay(1, false)
	local duration = timeLine:getDuration() / timeLine:getTimeSpeed() / 60
	self:performWithDelay(handler(self, self.bgActionFinished), duration)
end

function CreateRoleScene:bgActionFinished()
	local chooseLevel = self._rootNode:getChildByName("chooseLevel")
	chooseLevel:setVisible(true)
end

function CreateRoleScene:chooseLevel( sender )
	local name = sender:getName()
	print("level:", name)
end





return CreateRoleScene