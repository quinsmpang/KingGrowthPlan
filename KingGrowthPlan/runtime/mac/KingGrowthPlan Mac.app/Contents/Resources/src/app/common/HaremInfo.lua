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
	HaremInfo._haremList = GameData:getData("harem")
end

function HaremInfo.save()
	GameData:setData("harem", HaremInfo._haremList)
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

function HaremInfo.getListByStatus(status)
	local list = {}
	for i = 1,#HaremInfo._haremList do
		local item = HaremInfo._haremList[i]
		if item.status == status then
			list[#list + 1] = clone(item)
		end
	end
	return list
end
