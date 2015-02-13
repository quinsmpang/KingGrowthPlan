--
-- Author: lingyun
-- Date: 2015-02-03 14:37:13
--
local HaremModel = class("HaremModel", function ()
	return display.newNode()
end)

function HaremModel:ctor(view)
	self._view = view
end

-- mark 选择妃子
function HaremModel:choseHarem(tag)
	local config = HaremInfo.getConfig(tag)
	if config.status == HaremStatus.illness then
		self._view:showTip(tag, "娘娘身体不适，正在静养。")
	elseif config.status == HaremStatus.pregnancy then
		self._view:showTip(tag, "娘娘怀有龙胎，正在静养。")
	elseif config.status == HaremStatus.normal then
		self:visitConcubine(config)
	end
end
--临幸妃子
function HaremModel:visitConcubine( config )
	local showArr = {}
	local titleId = config.titleId
	local title = HaremTitle[titleId].name
	showArr.image = config.imagePath
	showArr.word1 = string.format("皇上临幸了%s:%s。", title, config.name)
	showArr.word2 = self:changeValue(config)

	if config.age > 38 then
		UserCenter.addValue("happy", 5)
		showArr.word1 = string.format("皇上前往了%s娘娘宫中休息。", title)
	else
		UserCenter.addValue("healthy", -1)
	    if math.random(0, 10) > 1 then 
			UserCenter.addValue("happy", 10)
    	else 
			UserCenter.addValue("happy", 20)
			showArr.word2 = "\n很愉快"
		end
	end
	HaremInfo.setConfig( titleId, config )


	self._view:showResultView(showArr)
end

-- mark 随便翻个
function HaremModel:randChoseOne()
	local normalList = HaremInfo.getListByStatus(HaremStatus.normal)
	if #normalList == 0 then
		self._view:showNoConcubine()
	else
		local index = math.random(1, #normalList)
		self:visitConcubine( normalList[index] )
	end
end


function HaremModel:arrangeMaid()	
	local tmpConfig = HaremInfo.getRandomMaid()
	local showArr = {}
	showArr.image = tmpConfig.imagePath
	showArr.word1 = ""
	showArr.word2 = ""

	if tmpConfig.appearance > 92 then
		showArr.word1 = string.format("<%s> 第一次侍奉皇上。", tmpConfig.name)
	elseif tmpConfig.appearance == 91 then
		showArr.word1 = string.format("[%s] 第一次侍奉皇上。", tmpConfig.name)
	elseif tmpConfig.appearance > 85 and tmpConfig.isFamous then
		showArr.word1 = string.format('"%s" 第一次侍奉皇上。', tmpConfig.name)
	else
		showArr.word1 = string.format('%s 第一次侍奉皇上。', tmpConfig.name)
	end

	showArr.word2 = self:changeValue(tmpConfig)
	tmpConfig.isFamous = nil
	GameData:setTmpData(TMP_DATA_KEY_MAID_CONFIG, tmpConfig)
	self._view:showResultView(showArr)
end

function HaremModel:changeValue( config)
	local addValue = config.appearance + math.floor(config.exp / 2)
	UserCenter.addValue("tili", addValue)
	config.love = config.love + 4
	config.exp = config.exp + 1

	local word = ""
	if UserCenter.getValue("tili") == UserCenter.getMax("tili") then
		word = "体力恢复全满"
	else
		word = string.format("体力恢复%d。", addValue)
	end
	return word
end

return HaremModel