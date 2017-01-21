local Control = require("Control")
local Character = {}
local BaseCharacter = require("BaseCharacter")

Character.new = function (options)
    local character = BaseCharacter.new(options)
    local rect = display.newRect(0, 0, 100, 100)
    rect.fill = {0.5, 0.5, 0.5}
    character:insert(rect)
    character:setControl()

    function character:toRotateWifi()
    	if self.facing == "up" then

    	elseif self.facing == "down" then

		elseif self.facing == "left" then

		elseif self.facing == "right" then
			
		end    		
    end


    return character
end

return Character