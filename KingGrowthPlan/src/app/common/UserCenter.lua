
UserCenter = {}

UserCenter._info = {}

--[[
	happy
	age
	healthy
	tili   
	weiwang
	wushu  
	meili  
	zhihui 
	baoli  
	daode  
	caiyi  
	life   
	tiliMax
	playerName
	countryName
	max
--]]
    
function UserCenter.init()
	UserCenter._info = GameData:getData(DATA_KEY_PLAYER_INFO)
end

function UserCenter.save()
	GameData:setData(DATA_KEY_PLAYER_INFO, UserCenter._info)
end

function UserCenter.getValue(propertyName)
	return UserCenter._info[propertyName]
end
function UserCenter.getMax(propertyName)
	local realName = propertyName .. "Max"
	return UserCenter._info[realName]
end

function UserCenter.addValue(propertyName, val)
	UserCenter._info[propertyName] = UserCenter._info[propertyName] + val
	if UserCenter.getValue(propertyName) > UserCenter.getMax(propertyName) then
		UserCenter._info[propertyName] = UserCenter.getMax(propertyName)
	end
	UserCenter.save()

	local event = cc.EventCustom:new("updatePlayerInfo")
	event:setDataString(propertyName)
	sharedEventDispatcher:dispatchEvent(event)
end



