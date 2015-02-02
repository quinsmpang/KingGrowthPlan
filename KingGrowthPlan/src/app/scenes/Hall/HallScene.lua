
local HallScene = class("HallScene", require("app.common.BaseScene"))

function HallScene:init()
	math.randomseed(tostring(os.time()):reverse():sub(0, 6))

	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:resetLocator()
	reader:setClickLocator(handler(self, self.getClickCallBack))

	local widget = cc.CSLoader:createNode("CSD/Hall.csb")
	self:addChild(widget)
	self._rootNode = widget
	self._hallEffect = seekNodeByName(widget, "hallEffect")
end

function HallScene:getClickCallBack( name )
	local callback
	if name == "Building" then
		callback = handler(self, self.clickBuilding)
	elseif name == "Zouzhe" then
		callback = handler(self, self.clickZouzhe)
	end
	return callback
end

function HallScene:clickBuilding( sender )
	local name = sender:getName()
	print("clickBuilding:", name)
	if name == "hougong" then
		self:clickHougong()
	elseif name == "yushuyuan" then
		self:clickYushuyuan()
	end
end

function HallScene:clickHougong()
	app:changeToHaremScene()
end

function HallScene:clickYushuyuan()
	self._hallEffect:setVisible(true)
end

function HallScene:clickZouzhe( sender )
	print("clickZouzhe:", sender:getName())
end




return HallScene