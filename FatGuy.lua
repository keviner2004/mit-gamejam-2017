local Control = require("Control")
local Character = {}
local BaseCharacter = require("BaseCharacter")

Character.new = function (options)
    local character = BaseCharacter.new(options)
    local rect = display.newRect(0, 0, 100, 100)
    rect.fill = {1, 0, 0}
    character:insert(rect)
    character.tag = "fatguy"

    return character
end

return Character