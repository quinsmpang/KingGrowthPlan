--
-- Author: lingyun
-- Date: 2015-02-03 14:33:47
--
HaremInfo = {}

HaremInfo._haremList = {}

--[[
	name = "萧忆茹",
	titleId = 7,
	imagePath = "Images/ManImages/meiren/meiren_32.jpg",
	appearance = 90,
	love = 60,
	exp = 0,
	age = 17,
	status = 0,
	statusNum = 0,
--]]
function HaremInfo.init()
	HaremInfo._haremList = GameData:getData(DATA_KEY_HAREM)
end

function HaremInfo.save()
	GameData:setData(DATA_KEY_HAREM, HaremInfo._haremList)
end

function HaremInfo.getConfig( titleId )
	return HaremInfo._haremList[titleId]
end
function HaremInfo.setConfig( titleId, config )
	HaremInfo._haremList[titleId] = config
	HaremInfo.save()
end
function HaremInfo.isExist( titleId )
	if HaremInfo._haremList[titleId] == nil then
		return false
	else
		return true
	end
end
function HaremInfo.isExistName( name )
	for key, val in pairs(HaremInfo._haremList) do
		if val.name == name then
			return true
		end
	end
	return false
end
function HaremInfo.isExistImage( image )
	for key, val in pairs(HaremInfo._haremList) do
		if val.imagePath == image then
			return true
		end
	end
	return false
end
-- mark random
function HaremInfo.getRandomItem()
	local values = table.values(HaremInfo._haremList)
	local index = math.random(1, #values)
	return values[index]
end

function HaremInfo.getRandomTitle()
	local config = HaremInfo.getRandomItem()
	local titleId = config.titleId
	return HaremTitle[titleId].name
end

function HaremInfo.getRandomMaid()
	local config = {
		exp = 0,
		status = 0,
		statusNum = 0,
	}
	local isFamous = math.random(0, 20)
	if isFamous == 0 then
		--check isexist
		local index = math.random(1, #HaremFamous)
		config = HaremFamous[index]
		while HaremInfo.isExistName(config.name) do
			index = math.random(1, #HaremFamous)
			config = HaremFamous[index]
		end
		config.isFamous = true
	else
		config.name = getRandomName(SexType.Girl)
		config.appearance = math.random(0, 50) + 30
		config.isFamous = false
	end

	config.imagePath = getRandomImage(RoleType.Feizi)
	while HaremInfo.isExistImage(config.imagePath) do
		config.imagePath = getRandomImage(RoleType.Feizi)
	end
	config.age = math.random(0, 6) + 16
	config.love = (math.random(0, 5) + 3) * 8

	return config
end

function HaremInfo.getListByStatus(status)
	local list = {}
	for key, item in pairs(HaremInfo._haremList) do
		if item.status == status then
			list[#list + 1] = clone(item)
		end
	end
	return list
end
