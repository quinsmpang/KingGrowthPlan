
local HaremView = require("app.scenes.Harem.HaremView")
local HaremModel = require("app.scenes.Harem.HaremModel")

local HaremScene = class("HaremScene", require("app.common.BaseScene"))

function HaremScene:init()
	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:setClickLocator(handler(self, self.getClickCallBack))
	
	self._view = HaremView.new(self)
				 :addTo(self)

	self._model = HaremModel.new(self._view)
					:addTo(self)
end

function HaremScene:getClickCallBack( eventName )
	if eventName == "Leave" then
		callback = handler(self, self.leave)
	elseif eventName == "RandChose" then
		callback = handler(self, self.randChose)
	elseif eventName == "MaidChose" then
		callback = handler(self, self.maidChose)
	elseif eventName == "HaremChose" then
		callback = handler(self, self.haremChose)
	end
	return callback
end

function HaremScene:leave()
	app:changeToHallScene()
end

function HaremScene:randChose()
	print("HaremScene:randChose")
end

function HaremScene:maidChose()
	print("HaremScene:maidChose")
end

function HaremScene:haremChose(sender)
	print("HaremScene:haremChose")
	local tag = sender:getTag()
	printf("sender:%d, title:%s", tag, HaremTitle[tag].name)
end

return HaremScene