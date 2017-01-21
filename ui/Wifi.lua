local Sprite = require("libs.Sprite")

local Wifi = {}

Wifi.new = function()
    wifi = display.newGroup()
    local sprite = Sprite["ui"].new("WIFI")

    wifi:insert(sprite)

    sprite.xScale = 1
    sprite.yScale = 1

    function wifi:setVisible(v)
    	self.isVisible = v
    end

    return wifi
end

return Wifi