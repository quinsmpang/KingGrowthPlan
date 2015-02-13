--
-- Author: lingyun
-- Date: 2015-02-03 14:37:21
--
local HaremView = class("HaremView", function ()
	return display.newLayer()
end)

function HaremView:ctor(scene)
	local widget = cc.CSLoader:createNode("CSD/Harem.csb")
	self:addChild(widget)

	self._rootNode = widget
		
	self:initView()

	local playerInfo = seekNodeByName(self._rootNode, "playerInfo") 
	PlayerInfo:setView(playerInfo)

	self._scene = scene
end

function HaremView:initView()
	local haremBg = seekNodeByName(self._rootNode, "harembg")
	for i = 1,#HaremTitle do
		local name = string.format("title_%d", i)
		local node = haremBg:getChildByName(name)
		if node == nil then
			node = cc.CSLoader:createNode("CSD/HaremBtn.csb")
			node:setName(name)
			haremBg:addChild(node)
		end
		local button = seekNodeByName(node, "button")
		button:setTag(i)

		local titleLabel = seekNodeByName(node, "title")
		titleLabel:setString(HaremTitle[i].name)

		local nameLabel = seekNodeByName(node, "name")
		if HaremInfo.isExist(i) then
			local config = HaremInfo.getConfig(i)
			nameLabel:setString(config.name)
		else
			nameLabel:setString("")
		end

		if i >= 2 then
			local posY = 470 - math.floor( (i - 2) / 4 ) * 40
			local posX = (i - 2) % 4 * 160 + 140
			node:setPosition(posX, posY)
		else
			node:setPosition(400, 516)
		end
	end
end


function HaremView:showTip( tag, word )
	local haremBg = seekNodeByName(self._rootNode, "harembg")
	local node = haremBg:getChildByName(string.format("title_%d", tag))
	local tipLabel = node:getChildByName("tip")
	tipLabel:setString(word)

	local seq = transition.sequence({
		cc.Show:create(),
		cc.DelayTime:create(1.5),
		cc.Hide:create(),
	})
	tipLabel:stopAllActions()
	tipLabel:runAction(seq)
end

function HaremView:showResultView(showArr)
	local haremResult = seekNodeByName(self._rootNode, "haremResult")
	local word1 = haremResult:getChildByName("word1")
	word1:setString(showArr.word1)

	local word2 = haremResult:getChildByName("word2")
	word2:setString(showArr.word2)

	local image = haremResult:getChildByName("image")
	local texture = getTextureByFile(showArr.image)
	image:setTexture(texture)

	haremResult:setVisible(true)
end

function HaremView:showNoConcubine()
	device.showAlert("error", "后宫没有合适的妃子", {"关闭"})
end

return HaremView