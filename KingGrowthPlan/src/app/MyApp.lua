
require("config")
require("cocos.init")
require("framework.init")



require("app.tools.GlobalVarible")
require("app.tools.GlobalMethod")
GameData = require("app.tools.GameData").new()
Dialogue = require("app.common.Dialogue").new()


require("app.config.NameConfig")
require("app.config.GameInitalConfig")
require("app.config.GameConfig")

local MyApp = class("MyApp", cc.mvc.AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    cc.FileUtils:getInstance():addSearchPath("res/")
    self:enterScene("Start.StartScene")
end

function MyApp:changeToCreateRoleScene()
    self:enterScene("CreateRole.CreateRoleScene", nil, "fade", 0.6, display.COLOR_BLACK)
end

function MyApp:changeToHallScene()
    self:enterScene("Hall.HallScene", nil, "fade", 0.6, display.COLOR_BLACK)
end

function MyApp:changeToHaremScene()
    self:enterScene("Harem.HaremScene", nil, "fade", 0.6, display.COLOR_BLACK)
end

return MyApp
