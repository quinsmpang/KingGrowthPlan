
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
	elseif eventName == "continueGame" then
		callback = handler(self, self.continueGame)
	end
	return callback
end

function StartScene:newGame()
	app:changeToCreateRoleScene()
end

function StartScene:continueGame()
	local playerInfo = GameData:getData("playerInfo")
	if playerInfo == nil then
		device.showAlert("error", "没有存档。", {"关闭"})
		return
	end
	app:initModel()
	UserCenter.addValue("tili", 100)
	app:changeToHallScene()
end

return StartScene
