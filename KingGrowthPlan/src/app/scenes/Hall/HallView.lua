--
-- Author: lingyun
-- Date: 2015-02-03 09:53:07
--
local HallView = class("HallView", function ()
	return display.newLayer()
end)

function HallView:ctor(scene)
	local widget = cc.CSLoader:createNode("CSD/Hall.csb")
	self:addChild(widget)
	self._rootNode = widget
	self._hallEffect = seekNodeByName(widget, "hallEffect")

	local playerView = seekNodeByName(widget, "playerinfo")
	PlayerInfo:setView(playerView)
	
	self._scene = scene
end


-- mark effect
function HallView:showEffect(effectName, word, decsWord)
	self._hallEffect:setVisible(true)
	local effectSpr = seekNodeByName(self._hallEffect, effectName)
	effectSpr:setVisible(true)
	self._hallEffect.effectName = effectName

	local result = seekNodeByName(self._hallEffect, "result")
	result:setString(word)

	if decsWord then
		local decsWordLabel = seekNodeByName(effectSpr, "Text_1")
		decsWordLabel:setString(decsWord)
	end
end
function HallView:hideEffect()
	self._hallEffect:setVisible(false)
	local effectSpr = seekNodeByName(self._hallEffect, self._hallEffect.effectName)
	effectSpr:setVisible(false)
	self._hallEffect.effectName = nil
end


--playerInfo


return HallView