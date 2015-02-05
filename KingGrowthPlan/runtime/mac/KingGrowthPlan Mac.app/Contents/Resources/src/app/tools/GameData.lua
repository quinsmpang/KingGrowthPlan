

local GameData = class("GameData")

local GameState_ = require(cc.PACKAGE_NAME .. ".cc.utils.GameState")
local Data_ = {}
local TmpData_ = {}

function GameData:ctor()
	GameState_.init(function(param)
        local result = nil
        if param.errorCode then
            print("GameData Error")
        else
            if param.name == "save" then
                local str = json.encode(param.values)
                str = crypto.encryptXXTEA(str, CONFIG_CRYPTO_KEY)
                result = { data = str }
            elseif param.name == "load" then
                local str = crypto.decryptXXTEA(param.values.data, CONFIG_CRYPTO_KEY)
                result = json.decode(str)
            end
        end

        return result
    end, "GameInfo", CONFIG_SCREEN_AUTOSCALE)
    
    if io.exists(GameState_.getGameStatePath()) then
        Data_ = GameState_.load()
    end
end
function GameData:clearData()
	Data_ = {}
	GameState_.save(Data_)
end
function GameData:setData(key, value)
	Data_[key] = value
	GameState_.save(Data_)
end

function GameData:getData(key)
	return Data_[key]
end

function GameData:setTmpData(key, value)
    TmpData_[key] = value
end

function GameData:getTmpData(key, notClean)
    local value = TmpData_[key]
    if isclean == nil then
        TmpData_[key] = nil
    end
    return value
end

return GameData