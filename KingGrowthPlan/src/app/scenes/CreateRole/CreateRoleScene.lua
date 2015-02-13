
require("app.config.QuestionConfig")

local CreateRoleScene = class("CreateRoleScene", require("app.common.BaseScene"))

function CreateRoleScene:init()
	math.randomseed(tostring(os.time()):reverse():sub(0, 6))

	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:resetLocator()
	reader:setClickLocator(handler(self, self.getClickCallBack))

	local widget = cc.CSLoader:createNode("CSD/CreateRole.csb")
	self:addChild(widget)
	self._rootNode = widget
end
function CreateRoleScene:getClickCallBack(name)
	local callback
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
	-- local timeLine = cache:createActionWithFlatBuffersFile("CSD/CreateRole.csb")
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
	GameData:setTmpData(TMP_DATA_KEY_GAME_LEVEL, level)

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

	GameData:setTmpData(TMP_DATA_KEY_PLAYER_NAME, playerName)
	GameData:setTmpData(TMP_DATA_KEY_COUNTRY_NAME, countryName)

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
		local addZhihui = GameData:getTmpData(TMP_DATA_KEY_ADD_ZHIHUI, false) or 0
		local addMeili = GameData:getTmpData(TMP_DATA_KEY_ADD_MEILI, false) or 0
		GameData:setTmpData(TMP_DATA_KEY_ADD_ZHIHUI, addZhihui + 2)
		GameData:setTmpData(TMP_DATA_KEY_ADD_MEILI, addMeili + 2)
	elseif chosed == 3 then
		local addWushu = GameData:getTmpData(TMP_DATA_KEY_ADD_WUSHU, false) or 0
		local addBaoli = GameData:getTmpData(TMP_DATA_KEY_ADD_BAOLI, false) or 0
		GameData:setTmpData(TMP_DATA_KEY_ADD_WUSHU, addWushu + 2)
		GameData:setTmpData(TMP_DATA_KEY_ADD_BAOLI, addBaoli + 2)
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

		local widget = cc.CSLoader:createNode("CSD/Zibei.csb")
		zibeiBG:addChild(widget)
		widget:setPosition(posX, posY)

		local btn = seekNodeByName(widget, "btn")
		btn:setTitleText(showZibeiList[i])
	end
end

function CreateRoleScene:choseZibei(sender)
	local zibei = sender:getTitleText()
	GameData:setTmpData(TMP_DATA_KEY_ZIBEI, zibei)

	self:refleshName()
	self:nextView("choseZibei", "choseQueen")
end

function CreateRoleScene:refleshName()
	local name = getRandomName(SexType.Girl)
	local queenName = seekNodeByName(self._rootNode, "queenName")
	queenName:setString(name)
	GameData:setTmpData(TMP_DATA_KEY_QUEEN_NAME, name)

	local imageName = getRandomImage(RoleType.Feizi)
	local queenImage = seekNodeByName(self._rootNode, "queenImage")
	local texture = getTextureByFile(imageName)
	queenImage:setTexture(texture)
	GameData:setTmpData(TMP_DATA_KEY_QUEEN_IMAGE, imageName)
end

-- mark init Data
function CreateRoleScene:createFinish()
	GameData:clearData()
	local gameLevel = GameData:getTmpData(TMP_DATA_KEY_GAME_LEVEL)
	GameData:setData(DATA_KEY_GAME_LEVEL, gameLevel)
	self:initPlayerInfo()
	self:initHarem()

	app:initModel()
	app:changeToHallScene()
end

function CreateRoleScene:initPlayerInfo()
	local playerInfo = clone(GameInitalConfig.playerInfo)
    playerInfo.healthy = playerInfo.healthy + math.random(1, 20)
	playerInfo.tili    = playerInfo.tili + math.random(1, 30)
	playerInfo.weiwang = playerInfo.weiwang + math.random(1, 50)
	playerInfo.wushu   = playerInfo.wushu + math.random(1, 10)
	playerInfo.meili   = playerInfo.meili + math.random(1, 10)
	playerInfo.zhihui  = playerInfo.zhihui + math.random(1, 10)
	playerInfo.baoli   = playerInfo.baoli + math.random(1, 10)
	playerInfo.daode   = playerInfo.daode + math.random(1, 10)
	playerInfo.caiyi   = playerInfo.caiyi + math.random(1, 10)
	playerInfo.life    = playerInfo.life + math.random(1, 80)
	playerInfo.tiliMax = playerInfo.tili


	local addZhihui = GameData:getTmpData(TMP_DATA_KEY_ADD_ZHIHUI) or 0
	playerInfo.zhihui  = playerInfo.zhihui + addZhihui
	local addMeili = GameData:getTmpData(TMP_DATA_KEY_ADD_MEILI) or 0
	playerInfo.meili  = playerInfo.meili + addMeili
	local addWushu = GameData:getTmpData(TMP_DATA_KEY_ADD_WUSHU) or 0
	playerInfo.wushu  = playerInfo.wushu + addWushu
	local addBaoli = GameData:getTmpData(TMP_DATA_KEY_ADD_BAOLI) or 0
	playerInfo.baoli  = playerInfo.baoli + addBaoli

	playerInfo.playerName = GameData:getTmpData(TMP_DATA_KEY_PLAYER_NAME)
	playerInfo.countryName = GameData:getTmpData(TMP_DATA_KEY_COUNTRY_NAME)

	GameData:setData(DATA_KEY_PLAYER_INFO, playerInfo)
end

function CreateRoleScene:initHarem()
	local haremConfig = clone(GameInitalConfig.harem)
	haremConfig[1] = {
			name       = GameData:getTmpData(TMP_DATA_KEY_QUEEN_NAME),
			titleId    = 1,
			imagePath  = GameData:getTmpData(TMP_DATA_KEY_QUEEN_IMAGE),
			appearance = 92,
            exp 	  = 210,
			love      = 500,
			age       = 16,
			status    = HaremStatus.normal,
			statusNum = 0,
		}
	GameData:setData(DATA_KEY_HAREM, haremConfig)
end

return CreateRoleScene