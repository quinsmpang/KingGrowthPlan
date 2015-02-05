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

	self._scene = scene
end

function HaremView:initView()
	local haremBg = seekNodeByName(self._rootNode, "harembg")
	for i = 1,#HaremTitle do
		local name = string.format("title_%d", i)
		local node = seekNodeByName(self._rootNode, name)
		if node == nil then
			node = cc.CSLoader:createNode("CSD/HaremBtn.csb")
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
		end
	end
end

return HaremView