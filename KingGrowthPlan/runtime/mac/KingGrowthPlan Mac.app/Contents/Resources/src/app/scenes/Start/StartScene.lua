
local StartScene = class("StartScene", function()
    return display.newScene("StartScene")
end)

function StartScene:ctor()
	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:setClickLocator(handler(self, self.getClickCallBack))
	local widget = cc.CSLoader:createNode("Start.csb")
	self:addChild(widget)
end

function StartScene:getClickCallBack( eventName )
	local callback = function() end
	if eventName == "newGame" then
		callback = handler(self, self.newGame)
	end
	return callback
end

function StartScene:newGame(sender)
	app:changeToCreateRoleScene()
end


return StartScene
