
function seekNodeByName( root, name )
	if root == nil or tolua.isnull(root) then
		return nil
	end

	if root:getName() == name then
		return root
	end

	local children = root:getChildren()
	for i = 1,#children do
		local child = children[i]
		local value = seekNodeByName(child, name)
		if value ~= nil then
			return value
		end
	end
	return nil
end

--从表里面获取随机的几个值
function getRandValue( tab, num )
    local value = num or 1
    local tmptable = clone(tab)
    local result = {}
    for i = 1,value do
        local index = math.random(1, #tmptable)
        result[i] = tmptable[index]
        table.remove(tmptable, index)
        if #tmptable == 0 then
            return result
        end
    end
    return result
end


function getRandomName(sex)
	local index = math.random(1, #FirstName)
	local name = FirstName[index]

	local hasSecond = math.random(1, 100)
	if hasSecond > 50 then
		index = math.random(1, #MiddleName)
		name = name .. MiddleName[index]
	end
	if sex == SexType.Boy then
		index = math.random(1, #BoyName)
		name = name .. BoyName[index]
	else
		index = math.random(1, #GirlName)
		name = name .. GirlName[index]
	end
	return name
end

function getRandomImage(roleType)
	local formate, max
	if RoleType.Feizi == roleType then
		formate = "Images/ManImages/meiren/meiren_%d.jpg"
		max = GameConfig.FeiziImageNum
	elseif RoleType.Nanchong == roleType then
		formate = "Images/ManImages/nanchong/nanchong_%d.jpg"
		max = GameConfig.NanchongImageNum
	elseif RoleType.Qinglou == roleType then
		formate = "Images/ManImages/qinglou/qinglou_%d.jpg"
		max = GameConfig.QinglouImageNum
	elseif RoleType.Waiyu == roleType then
		formate = "Images/ManImages/waiyumeiren/waiyu_%d.jpg"
		max = GameConfig.WaiyuImageNum
	else
		print("error roleType")
		formate = ""
		max = 2
	end
	local index = math.random(1, max)
	local image = string.format(formate, index)
	return image
end

function getTextureByFile(fileName)
	local sprite = display.newSprite(fileName)
	return sprite:getTexture()
end




