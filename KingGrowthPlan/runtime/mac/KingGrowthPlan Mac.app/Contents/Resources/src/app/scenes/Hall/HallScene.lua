
local HallView = require("app.scenes.Hall.HallView")
local HallModel = require("app.scenes.Hall.HallModel")

local HallScene = class("HallScene", require("app.common.BaseScene"))

function HallScene:init()
	math.randomseed(tostring(os.time()):reverse():sub(0, 6))

	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:resetLocator()
	reader:setClickLocator(handler(self, self.getClickCallBack))

	self._view = HallView.new(self)
				 :addTo(self)

	self._model = HallModel.new(self._view)
					:addTo(self)
end

function HallScene:getClickCallBack( name )
	local callback
	if name == "Building" then
		callback = handler(self, self.clickBuilding)
	elseif name == "Zouzhe" then
		callback = handler(self, self.clickZouzhe)
	elseif name == "HallEffectFinish" then
		callback = function ()
			self._view:hideEffect()
		end
	end
	return callback
end

function HallScene:clickBuilding( sender )
	local name = sender:getName()
	if name == "hougong" then
		self:clickHougong()

	elseif name == "yushuyuan" then
		self._model:addProperty("zhihui", "yushuyuan")
	elseif name == "wudaochang" then
		self._model:addProperty("wushu", "wudaochang")
	elseif name == "baijuyuan" then
		self._model:addProperty("caiyi", "baijuyuan")
	elseif name == "qinqige" then
		self._model:addProperty("meili", "qinqige")

	elseif name == "cininggong" then
		self._model:clickCiNing()
	elseif name == "jinlongdian" then
		self._model:recoveryTili()
	end
end

function HallScene:clickHougong()
	app:changeToHaremScene()
end

function HallScene:clickZouzhe( sender )
	print("clickZouzhe:", sender:getName())
end


return HallScene