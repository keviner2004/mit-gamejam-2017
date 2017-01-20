local Control = require("Control")
local Character = {}

Character.new = function ()
    local character = display.newGroup()
    local rect = display.newRect(0, 0, 100, 100)
    character:insert(rect)

    character.control = Control.new(character)

    function character:walkUp()
        print("Please overwride the walkUp function")
    end

    function character:walkDown()
        print("Please overwride the walkDown function")
    end

    function character:walkLeft()
        print("Please overwride the walkLeft function")
    end

    function character:walkRight()
        print("Please overwride the walkRight function")
    end

    return character
end

return Character