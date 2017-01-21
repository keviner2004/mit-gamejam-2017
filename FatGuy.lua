local Control = require("Control")
local Character = {}
local BaseCharacter = require("BaseCharacter")

Character.new = function (options)
    local character = BaseCharacter.new(options)
    character.tag = "fatguy"

    character:setSpriteTag("enemy")

    character:setWalkUpAnimation({
        "left/walking/1",
        "left/walking/2",
    })

    character:setWalkDownAnimation({
        "left/walking/1",
        "left/walking/2",
    })

    character:setWalkLeftAnimation({
        "left/walking/1",
        "left/walking/2",
    })

    character:setWalkRightAnimation({
        "right/walking/1",
        "right/walking/2",
    })

    character:setIdleUpAnimation({
        "right/standingstill/1",
    })

    character:setIdleDownAnimation({
        "right/standingstill/1",
    })

    character:setIdleLeftAnimation({
        "right/standingstill/1",
    })

    character:setIdleRightAnimation({
        "right/standingstill/1",
    })

    character:genAnimation()

    function character:walkRight()
        self.sprite:setSequence("walkright")
        self.sprite.xScale = 1
        self.sprite:play()
    end

    character:addEventListener("move", function(event)
        print("move fatty", event.dir)
        if event.dir == "down" then
            character:walkDown()
            character.facing = "down"
        elseif event.dir == "up" then
            character:walkUp()
            character.facing = "up"
        elseif event.dir == "left" then
            character:walkLeft()
            character.facing = "left"
        elseif event.dir == "right" then
            character:walkRight()
            character.facing = "right"
        end
    end)

    character:addEventListener("movedone", function(event)
        print("Facing! ", character.facing)
        if character.facing == "down" then
            character:idleDown()
        elseif character.facing == "up" then
            character:idleUp()
        elseif character.facing == "left" then
            character:idleLeft()
        elseif character.facing == "right" then
            character:idleRight()
        end
    end)


    return character
end

return Character