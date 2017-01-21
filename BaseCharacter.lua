local Control = require("Control")
local Character = {}

Character.new = function (options)
    local character = display.newGroup()
    local rect = display.newRect(0, 0, 100, 100)

    character.map = options and options.map
    character.focus = options and options.focus or 100
    character.charge = options and options.charge or 100
    character.faceValue = options and options.faceValue or 50
    character.focusOffset = options and options.focusOffset or 0.1
    character.charge = options and options.charge or 4
    character.mapPos = {x = -1, y = -1}
    character:insert(rect)

    function character:dispatchFocusChangeEvent()
        if self.dispatchEvent then
        self.dispatchEvent({
            name = "focus",
            value = self.focus
        })
        end
    end

    function character:setControl()
        self.control = Control.new(character)
    end

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

    function character:hasWifi()
        return false
    end

    function character:enterFrame(event)
        if not self.x then
            Runtime:removeEventListener(enterFrame)
            return
        end
        if self.map and self.mapPos then
            if not hasWifi and self.focus > 0 then
                if self.focus - self.focusOffset > 0 then
                    self.focus = self.focus - self.focusOffset
                else
                    self.focus = 0
                end
                self:dispatchFocusChangeEvent()
            end
        end
    end

    return character
end

return Character