--
-- Author: lingyun
-- Date: 2015-02-03 09:53:18
--
local HallModel = class("HallModel", function ()
	return display.newNode()
end)

function HallModel:ctor(view)
	self._view = view
end

function HallModel:getAddNumWord()
	local chose = math.random(0, 6)
	if chose == 0 then
		local index = math.random(1, #LearningWord.Bad)
		return 1, LearningWord.Bad[index]
	elseif chose == 1 then
		local index = math.random(1, #LearningWord.Middle)
		return 3, LearningWord.Middle[index]
	else
		local index = math.random(1, #LearningWord.Nice)
		return 5, LearningWord.Nice[index]
	end
end
--智慧、武术、魅力、才艺
function HallModel:addProperty(propertyName, effectName)
	UserCenter.addValue("tili", -40)
	local addNum, word = self:getAddNumWord()
	UserCenter.addValue(propertyName, addNum)
	self._view:showEffect(effectName, word)
end

function HallModel:clickCiNing()
	UserCenter.addValue("tili", -30)
	local addNum = math.random(0, 4) + 3
	UserCenter.addValue("daode", addNum)
	self._view:showEffect("cininggong", "")
end

function HallModel:recoveryTili()
	local descWord = "皇上在金龙殿休息。"
	local chosed = math.random(0, 4)
	if chosed == 0 then
		local harem = GameData:getData("harem")
		local values = table.values(harem)
		local index = math.random(1, #values)
		local titleId = values[index].titleId
		descWord = string.format("%s娘娘前来伺候皇上休息。", HaremTitle[titleId].name)
		UserCenter.addValue("healthy", 5)
	end

	UserCenter.addValue("tili", 220)
	local word = "体力恢复220"
	if UserCenter.getValue("tili") == UserCenter.getMax("tili") then
		word = "体力恢复全满"
	end

	self._view:showEffect("jinlongdian", word, descWord)
end



return HallModel