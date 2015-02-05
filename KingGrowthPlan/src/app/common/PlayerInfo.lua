--
-- Author: lingyun
-- Date: 2015-02-03 11:24:49
--
local PlayerInfo = class("PlayerInfo")

function PlayerInfo:ctor()
	self._view = nil

	local listener = cc.EventListenerCustom:create("updatePlayerInfo", 
													handler(self, self.updatePlayerInfo))
	sharedEventDispatcher:addEventListenerWithFixedPriority(listener, 1)
end

function PlayerInfo:setView( view )
	self._view = view
	for i = 1,#PlayerInfoKey do
		self:changeView(PlayerInfoKey[i])
	end
end

function PlayerInfo:updatePlayerInfo(event)
	if self._view == nil or tolua.isnull(self._view) then
		self._view = nil
		return
	end
	local dataStr = event:getDataString()

	self:changeView(dataStr)
end

function PlayerInfo:changeView(key)
	local val = UserCenter.getValue(key)
	local valueLabel = seekNodeByName(self._view, key .. "Value")
	valueLabel:setString(val)

	local fPercentage = val / UserCenter.getMax(key) * 100
	local progressBar = seekNodeByName(self._view, key .. "Progress")
	progressBar:setPercent(fPercentage)
end



return PlayerInfo