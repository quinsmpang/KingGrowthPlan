
local StartScene = class("StartScene", require("app.common.BaseScene"))

function StartScene:init()
	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:setClickLocator(handler(self, self.getClickCallBack))
	local widget = cc.CSLoader:createNode("CSD/Start.csb")
	self:addChild(widget)
end

function StartScene:getClickCallBack( eventName )
	if eventName == "newGame" then
		callback = handler(self, self.newGame)
	end
	return callback
end

function StartScene:newGame(sender)
	-- app:changeToCreateRoleScene()
	app:changeToHallScene()
end


return StartScene
