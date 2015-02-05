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


return HaremModel