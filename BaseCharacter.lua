local Control = require("Control")
local MoveObject = require("MoveObject")
local Character = {}

Character.new = function (options)
    local character = MoveObject.new(options)

    character.map = options and options.map
    character.focus = options and options.focus or 100
    character.faceValue = options and options.faceValue or 50
    character.focusOffset = options and options.focusOffset or 0.1
    character.charge = options and options.charge or 4
    character.animation = {}
    character.spriteTag = "character"
    character.facing = options and options.facing or "down"

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

    function character:dispathcActionEvent(phase, dir)
        self:dispatchEvent({
            name = "action",
            phase = phase,
            dir = dir,
        })
    end

    function character:onWalkUp()
        self.facing = "up"
        self:dispathcActionEvent("walk", "up")
    end

    function character:onWalkDown()
        self.facing = "down"
        self:dispathcActionEvent("walk", "down")
    end

    function character:onWalkLeft()
        self.facing = "left"
        self:dispathcActionEvent("walk", "left")
    end

    function character:onWalkRight()
        self.facing = "right"
        self:dispathcActionEvent("walk", "right")
    end

    function character:onRotateWifi()
        self:dispathcActionEvent("rotate", "clockwize")
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

    function character:setSpriteTag(tag)
        self.spriteTag = tag
    end

    function character:setAnimation(name, frames)
        local sequence = {}
        sequence.name = name
        sequence.frames = frames
        self.animation[#self.animation+1] = sequence
    end

    function character:setWalkUpAnimation(frames)
        setAnimation("walkup", frames)
    end

    function character:setWalkDownAnimation()
        setAnimation("walkdown", frames)
    end

    function character:setWalkLeftAnimation()
        setAnimation("idleleft", frames)
    end

    function character:setWalkRightAnimation()
        setAnimation("idleright", frames)
    end

    function character:setIdleUpAnimation(frames)
        setAnimation("idleup", frames)
    end

    function character:setIdleDownAnimation()
        setAnimation("idledown", frames)
    end

    function character:setIdleLeftAnimation()
        setAnimation("idleleft", frames)
    end

    function character:setIdleRightAnimation()
        setAnimation("idleright", frames)
    end

    function character:setOpUpAnimation(frames)
        setAnimation("opup", frames)
    end

    function character:setOpDownAnimation()
        setAnimation("opdown", frames)
    end

    function character:setOpLeftAnimation()
        setAnimation("opleft", frames)
    end

    function character:setOpRightAnimation()
        setAnimation("opright", frames)
    end

    function character:genAnimation()
        self.sprite = Sprite[self.spriteTag].newAnimation(self.animation)
    end

    function character:setSequence(name)
       self.sprite:setSequence(name)
    end

    function character:play()
        self.sprite:play()
    end    

    return character
end

return Character