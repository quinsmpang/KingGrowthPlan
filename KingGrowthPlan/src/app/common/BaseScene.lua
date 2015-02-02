local BaseScene = class("BaseScene", function()
    return display.newScene("BaseScene")
end)

function BaseScene:ctor()
	assert(self, "亲！不能重载ctor啦，重载init吧^_^")

	self.name = self.__cname
    
    app.curScene = self
    
    self:init()
end

function BaseScene:init()
end
return BaseScene