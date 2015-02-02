
local Dialogue = class("Dialogue")

function Dialogue:ctor()
	self._dialogue = nil
end

function Dialogue:checkVarible()
	if self._dialogue == nil or tolua.isnull(self._dialogue) then
		self:initView()
	end
end
function Dialogue:initView()
	self._dialogue = cc.CSLoader:createNode("Dialogue.csb")
	app.curScene:addChild(self._dialogue, 10)
	local continue = seekNodeByName(self._dialogue, "continue")
	continue:addClickEventListener(handler(self, self.clickContinue))
end

function Dialogue:speakWords( words, callback )
	self._words = words
	self._callback = callback
	
	self:checkVarible()
	self._dialogue:setVisible(true)

	self:speakSingle(self._words[1])
end
--[[
	text: 文字
	faceType: 小桂子的表情， FaceType 不填为Normal
	descImage：上边的描述图片路径
--]]
function Dialogue:speakSingle( config, callback )
	self:checkVarible()

	if callback ~= nil then
		self._callback = callback
		self._words = {}
	end

	local label = seekNodeByName(self._dialogue, "word")
	label:setString(config.text)

	local faceType = config.faceType or FaceType.Normal
	local image = FaceImage[faceType]
	local texture = getTextureByFile(image)
	local xiaoguizi = seekNodeByName(self._dialogue, "xiaoguizi")
	xiaoguizi:setTexture(texture)

	local descImage = seekNodeByName(self._dialogue, "descImage")
	if config.descImage then
		descImage:setVisible(true)
		texture = getTextureByFile(config.descImage)
		descImage:setTexture(texture)
	else
		descImage:setVisible(false)
	end
end

function Dialogue:clickContinue()
	if #self._words <= 1 then
		self._dialogue:setVisible(false)
		self._callback()
	else
		table.remove(self._words, 1)
		self:speakSingle(self._words[1])
	end
end
return Dialogue