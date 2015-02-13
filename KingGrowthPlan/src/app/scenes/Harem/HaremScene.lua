
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
	elseif eventName == "HaremFinish" then
		callback = handler(self, self.leave)

	elseif eventName == "Dialoguecontinue" then    --对话
		callback = handler(Dialogue, Dialogue.clickContinue)
	end
	return callback
end

function HaremScene:leave()
	app:changeToHallScene()
end

function HaremScene:randChose()
	self._model:randChoseOne()
end

function HaremScene:maidChose()
	local config = {
		text = "皇上，\n奴才这就去储秀宫帮您挑选一位。\n保证让您满意。",
		faceType = FaceType.Happy,
		isMask = true,
	}
	Dialogue:speakSingle( config, function ()
		self._model:arrangeMaid()
	end )
	
end

function HaremScene:haremChose(sender)
	local tag = sender:getTag()
	if HaremInfo.isExist(tag) == false then
		return
	end
	self._model:choseHarem(tag)
end

return HaremScene