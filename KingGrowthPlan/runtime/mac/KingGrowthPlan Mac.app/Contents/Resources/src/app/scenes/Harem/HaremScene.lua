
local HaremScene = class("HaremScene", require("app.common.BaseScene"))

function HaremScene:init()
	local reader = CustomNode.CustomRootNodeReader:getInstance()
	reader:setClickLocator(handler(self, self.getClickCallBack))
	local widget = cc.CSLoader:createNode("CSD/Harem.csb")
	self:addChild(widget)

	self._rootNode = widget

	self:initHaremView()
end

function HaremScene:initHaremView()
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
		nameLabel:setString("")

		if i >= 2 then
			local posY = 470 - math.floor( (i - 2) / 4 ) * 40
			local posX = (i - 2) % 4 * 160 + 140
			node:setPosition(posX, posY)
		end
	end
end
function HaremScene:getClickCallBack( eventName )
	if eventName == "Leave" then
		callback = handler(self, self.leave)
	elseif eventName == "RandChose" then
		callback = handler(self, self.randChose)
	elseif eventName == "MaidChose" then
		callback = handler(self, self.maidChose)
	elseif eventName == "HaremChose" then
		callback = handler(self, self.haremChose)
	end
	return callback
end



function HaremScene:leave()
	app:changeToHallScene()
end

function HaremScene:randChose()
	print("HaremScene:randChose")
end

function HaremScene:maidChose()
	print("HaremScene:maidChose")
end

function HaremScene:haremChose(sender)
	print("HaremScene:haremChose")
	local tag = sender:getTag()
	printf("sender:%d, title:%s", tag, HaremTitle[tag].name)
end

return HaremScene