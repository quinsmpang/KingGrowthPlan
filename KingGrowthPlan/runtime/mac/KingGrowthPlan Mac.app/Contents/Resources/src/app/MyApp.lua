
require("config")
require("cocos.init")
require("framework.init")



require("app.Includer")

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



function MyApp:initModel()
	UserCenter.init()
	HaremInfo.init()
end
return MyApp
