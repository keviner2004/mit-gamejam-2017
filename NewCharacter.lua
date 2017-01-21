local Control = require("Control")
local Character = {}
local BaseCharacter = require("BaseCharacter")

Character.new = function (options)
    local character = BaseCharacter.new()
    local rect = display.newRect(0, 0, 100, 100)
    character:insert(rect)
    character:setControl()

    return character
end

return Character