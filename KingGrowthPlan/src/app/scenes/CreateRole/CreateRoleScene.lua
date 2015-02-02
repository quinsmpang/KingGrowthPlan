
require("app.config.QuestionConfig")

local CreateRoleScene = class("CreateRoleScene", require("app.common.BaseScene"))

function CreateRoleScene:init()
	math.randomseed(tostring(os.time()):reverse():sub(0, 6))

	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:resetLocator()
	reader:setClickLocator(handler(self, self.getClickCallBack))

	local widget = cc.CSLoader:createNode("CreateRole.csb")
	self:addChild(widget)
	self._rootNode = widget
end
function CreateRoleScene:getClickCallBack(name)
	local callback = function ()  end
	if name == "chooseLevel" then
		callback = handler(self, self.chooseLevel)
	elseif name == "setName" then
		callback = handler(self, self.setName)
	elseif name == "charChosed" then
		callback = handler(self, self.charChosed)
	elseif name == "choseZibei" then
		callback = handler(self, self.choseZibei)
	elseif name == "refleshName" then
		callback = handler(self, self.refleshName)
	elseif name == "createFinish" then
		callback = handler(self, self.createFinish)
	end
	return callback
end
function CreateRoleScene:onEnter()
	print("CreateRoleScene:onEnter")
	-- local cache = ccs.ActionTimelineCache:getInstance()
	-- local timeLine = cache:createActionWithFlatBuffersFile("CreateRole.csb")
	-- timeLine:setTimeSpeed(1/2)
	-- self:runAction(timeLine)
	-- timeLine:gotoFrameAndPlay(1, false)
	-- local duration = timeLine:getDuration() / timeLine:getTimeSpeed() / 60
	-- self:performWithDelay(handler(self, self.bgActionFinished), duration)

	self:bgActionFinished()
end

function CreateRoleScene:bgActionFinished()
	local chooseLevel = self._rootNode:getChildByName("chooseLevel")
	chooseLevel:setVisible(true)
end

function CreateRoleScene:chooseLevel( sender )
	local name = sender:getName()
	local level = string.sub(name, -1)
	GameData:setTmpData("GameLevel", level)

	self:nextView("chooseLevel", "name")
end
function CreateRoleScene:nextView( curName, nextName )
	local curView = self._rootNode:getChildByName(curName)
	curView:setVisible(false)

	local nextView = self._rootNode:getChildByName(nextName)
	nextView:setVisible(true)
end

function CreateRoleScene:setName()
	local playerNameInput = seekNodeByName(self._rootNode, "playerinput")
	local playerName = playerNameInput:getString()
	if playerName == "" then
		device.showAlert("error", "名字不能为空", {"关闭"})
		return
	end

	local countryNameInput = seekNodeByName(self._rootNode, "countryinput")
	local countryName = countryNameInput:getString()
	if countryName == "" then
		device.showAlert("error", "国号不能为空", {"关闭"})
		return
	end

	GameData:setTmpData("playerName", playerName)
	GameData:setTmpData("countryName", countryName)

	self.questionList = clone(QuestionConfig)
	self.questionNum = 0
	self:changeQuestion()
	self:nextView("name", "charTest")
end

function CreateRoleScene:changeQuestion()
	local index = math.random(1, #self.questionList)
	local questionConfig = self.questionList[index]

	local question = seekNodeByName(self._rootNode, "question")
	question:setString(questionConfig.question)

	local ans1 = seekNodeByName(self._rootNode, "ans1")
	ans1:setString(questionConfig.answer1)

	local ans2 = seekNodeByName(self._rootNode, "ans2")
	ans2:setString(questionConfig.answer2)

	local ans3 = seekNodeByName(self._rootNode, "ans3")
	ans3:setString(questionConfig.answer3)

	self.questionNum = self.questionNum + 1
	table.remove(self.questionList, index)
end

function CreateRoleScene:charChosed(object)
	local name = object:getName()
	local chosed = string.sub(name, -1)
	if chosed == 1 then
		local addZhihui = GameData:getTmpData("addZhihui", false) or 0
		local addMeili = GameData:getTmpData("addMeili", false) or 0
		GameData:setTmpData("addZhihui", addZhihui + 2)
		GameData:setTmpData("addMeili", addMeili + 2)
	elseif chosed == 3 then
		local addWushu = GameData:getTmpData("addWushu", false) or 0
		local addBaoli = GameData:getTmpData("addBaoli", false) or 0
		GameData:setTmpData("addWushu", addWushu + 2)
		GameData:setTmpData("addBaoli", addBaoli + 2)
	end

	if self.questionNum == 5 then
		self:initZibei()
		self:nextView("charTest", "choseZibei")
	else
		self:changeQuestion()
	end
end

function CreateRoleScene:initZibei()
	local zibeiBG = seekNodeByName(self._rootNode, "zibeiBg")

	local showZibeiList = getRandValue(MiddleName, 40)
	for i = 1,#showZibeiList do
		local posY = math.floor( (i - 1) / 10 ) * 70 + 65
		local posX = i % 10 * 70 + 70

		local widget = cc.CSLoader:createNode("Zibei.csb")
		zibeiBG:addChild(widget)
		widget:setPosition(posX, posY)

		local btn = seekNodeByName(widget, "btn")
		btn:setTitleText(showZibeiList[i])
	end
end

function CreateRoleScene:choseZibei(sender)
	local zibei = sender:getTitleText()
	GameData:setTmpData("zibei", zibei)

	self:refleshName()
	self:nextView("choseZibei", "choseQueen")
end

function CreateRoleScene:refleshName()
	local name = getRandomName(SexType.Girl)
	local queenName = seekNodeByName(self._rootNode, "queenName")
	queenName:setString(name)
	GameData:setTmpData("queenName", queenName)

	local imageName = getRandomImage(RoleType.Feizi)
	local queenImage = seekNodeByName(self._rootNode, "queenImage")
	local texture = getTextureByFile(imageName)
	queenImage:setTexture(texture)
	GameData:setTmpData("queenImage", imageName)
end

function CreateRoleScene:createFinish()
	GameData:clearData()
	local gameLevel = GameData:getTmpData("GameLevel")
	GameData:setData("gameLevel", gameLevel)
	self:initPlayerInfo()
	self:initHarem()
end

function CreateRoleScene:initPlayerInfo()
	local playerInfo = clone(GameInitalConfig.playerInfo)
    playerInfo.healthy = playerInfo.healthy + math.random(1, 20)
	playerInfo.tili    = playerInfo.tili + math.random(1, 30)
	playerInfo.weiwang = playerInfo.weiwang + math.random(1, 50)
	playerInfo.wushu   = playerInfo.wushu + math.random(1, 10)
	playerInfo.wenxue  = playerInfo.wenxue + math.random(1, 10)
	playerInfo.meili   = playerInfo.meili + math.random(1, 10)
	playerInfo.zhihui  = playerInfo.zhihui + math.random(1, 10)
	playerInfo.baoli   = playerInfo.baoli + math.random(1, 10)
	playerInfo.daode   = playerInfo.daode + math.random(1, 10)
	playerInfo.caiyi   = playerInfo.caiyi + math.random(1, 10)
	playerInfo.life    = playerInfo.life + math.random(1, 80)
	playerInfo.tiliMax = playerInfo.tili


	local addZhihui = GameData:getTmpData("addZhihui") or 0
	playerInfo.zhihui  = playerInfo.zhihui + addZhihui
	local addMeili = GameData:getTmpData("addMeili") or 0
	playerInfo.meili  = playerInfo.meili + addMeili
	local addWushu = GameData:getTmpData("addWushu") or 0
	playerInfo.wushu  = playerInfo.wushu + addWushu
	local addBaoli = GameData:getTmpData("addBaoli") or 0
	playerInfo.baoli  = playerInfo.baoli + addBaoli

	playerInfo.playerName = GameData:getTmpData("playerName")
	playerInfo.countryName = GameData:getTmpData("countryName")

	GameData:setData("playerInfo", playerInfo)
end

function CreateRoleScene:initHarem()
	local harem = clone(GameInitalConfig.harem)
	harem[1] = {
			name = GameData:getTmpData("queenName"),
			titleId = 1,
			imagePath = GameData:getTmpData("queenImage"),
			appearance = 92,
			goodwill = 210,
			age = 16,
			status = 0,
		},
	GameData:setData("harem", harem)
end

return CreateRoleScene