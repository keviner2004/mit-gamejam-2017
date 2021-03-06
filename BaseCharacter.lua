local Control = require("Control")
local Sprite = require("libs.Sprite")
local MoveObject = require("MoveObject")
local Character = {}

Character.new = function (options)
    local character = MoveObject.new(options)

    character.map = options and options.map
    character.maxFocus = options and options.maxFocus or 100
    character.focus = options and options.focus or 100
    character.faceValue = options and options.faceValue or 50
    character.focusOffset = options and options.focusOffset or 0.05
    character.maxCharge = options and options.maxCharge or 5
    character.charge = options and options.charge or 5
    character.animation = {}
    character.spriteTag = "character"
    character.facing = options and options.facing or "down"

    function character:setControl()
        self.control = Control.new(character)
    end

    function character:dispathcActionEvent(phase, dir, value)
        if self.dispatchEvent then
            self:dispatchEvent({
                name = "action",
                phase = phase,
                dir = dir,
                value = value
            })
        end
    end

    function character:onWalkUp()
        self.facing = "up"
        self:dispathcActionEvent("walk", "up")
        --self:walkUp()
    end

    function character:onWalkDown()
        self.facing = "down"
        self:dispathcActionEvent("walk", "down")
        --self:walkDown()
    end

    function character:onWalkLeft()
        self.facing = "left"
        self:dispathcActionEvent("walk", "left")
        --self:walkLeft()
    end

    function character:onWalkRight()
        self.facing = "right"
        self:dispathcActionEvent("walk", "right")
        --self:walkRight()
    end

    function character:onRotateWifi(dir)
        self:dispathcActionEvent("rotate", dir)
    end

    function character:onActive(key)
        self:dispathcActionEvent("active", key)
    end

    function character:hasWifi()
        return false
    end

    function character:setSpriteTag(tag)
        self.spriteTag = tag
    end

    function character:setAnimation(name, frames, options)
        local time = options and options.time or 1000
        local loopCount = options and options.loopCount or 0
        local sequence = {}
        sequence.name = name
        sequence.frames = frames
        sequence.time = time
        sequence.loopCount = loopCount
        self.animation[#self.animation+1] = sequence
    end

    function character:setWalkUpAnimation(frames)
        self:setAnimation("walkup", frames)
    end

    function character:setWalkDownAnimation(frames)
        self:setAnimation("walkdown", frames)
    end

    function character:setWalkLeftAnimation(frames)
        self:setAnimation("walkleft", frames, {
            time = 800
        })
    end

    function character:setWalkRightAnimation(frames)
        self:setAnimation("walkright", frames)
    end

    function character:setIdleUpAnimation(frames)
        self:setAnimation("idleup", frames)
    end

    function character:setIdleDownAnimation(frames)
        self:setAnimation("idledown", frames)
    end

    function character:setIdleLeftAnimation(frames)
        self:setAnimation("idleleft", frames)
    end

    function character:setIdleRightAnimation(frames)
        self:setAnimation("idleright", frames)
    end

    function character:setOpUpAnimation(frames)
        self:setAnimation("opup", frames)
    end

    function character:setOpDownAnimation(frames)
        self:setAnimation("opdown", frames)
    end

    function character:setOpLeftAnimation(frames)
        self:setAnimation("opleft", frames)
    end

    function character:setOpRightAnimation(frames)
        self:setAnimation("opright", frames)
    end

    function character:setPhotoUpAnimation(frames)
        self:setAnimation("photoup", frames, {
            loopCount = 1
        })
    end

    function character:setPhotoDownAnimation(frames)
        self:setAnimation("photodown", frames, {
            loopCount = 1
        })
    end

    function character:setPhotoLeftAnimation(frames)
        self:setAnimation("photoleft", frames, {
            loopCount = 1
        })
    end

    function character:setPhotoRightAnimation(frames)
        self:setAnimation("photoright", frames, {
            loopCount = 1
        })
    end

    function character:setSelfUpAnimation(frames)
        self:setAnimation("selfup", frames, {
            loopCount = 1
        })
    end

    function character:setSelfDownAnimation(frames)
        self:setAnimation("selfdown", frames, {
            loopCount = 1
        })
    end

    function character:setSelfLeftAnimation(frames)
        self:setAnimation("selfleft", frames, {
            loopCount = 1
        })
    end

    function character:setSelfRightAnimation(frames)
        self:setAnimation("selfright", frames, {
            loopCount = 1
        })
    end

    function character:genAnimation()
        self.sprite = Sprite[self.spriteTag].newAnimation(self.animation)
        self:insert(self.sprite)
    end

    function character:setSequence(name)
       self.sprite:setSequence(name)
    end

    function character:idleUp()
        self.walkingStatus = "idle"
        self.sprite:setSequence("idleup") 
        self.sprite:play()
    end

    function character:idleDown()
        self.walkingStatus = "idle"
        self.sprite:setSequence("idledown")
        self.sprite:play()
    end

    function character:idleLeft()
        self.walkingStatus = "idle"
        self.sprite:setSequence("idleleft")
        self.sprite.xScale = 1
        self.sprite:play()
    end

    function character:idleRight()
        self.walkingStatus = "idle"
        self.sprite:setSequence("idleleft")
        self.sprite.xScale = -1
        self.sprite:play()
    end

    function character:walkUp()
        if self.walkingStatus == "up" then
            return
        end 
        self.walkingStatus = "up"
        self.sprite:setSequence("walkup") 
        self.sprite:play()
    end

    function character:walkDown()
        if self.walkingStatus == "down" then
            return
        end 
        self.walkingStatus = "down"
        self.sprite:setSequence("walkdown") 
        self.sprite:play()
    end

    function character:walkLeft()
        if self.walkingStatus == "left" then
            return
        end 
        self.walkingStatus = "left"
        self.sprite:setSequence("walkleft")
        self.sprite.xScale = 1
        self.sprite:play()
    end

    function character:walkRight()
        if self.walkingStatus == "right" then
            return
        end 
        self.walkingStatus = "right"
        self.sprite:setSequence("walkleft")
        self.sprite.xScale = -1
        self.sprite:play()
    end

    function character:ajustToIdle(time)
        if not time then
            time = 1000
        end
        timer.performWithDelay(time, function()
            if not self.x then
                return
            end
            if self.facing == "up" then
                self:idleUp()
            elseif self.facing == "down" then
                self:idleDown()
            elseif self.facing == "left" then
                self:idleLeft()
            elseif self.facing == "right" then
                self:idleRight()
            end
        end)
    end

    function character:photoUp()
        self.sprite:setSequence("photoup")
        self.sprite:play()
        self:ajustToIdle()
    end

    function character:photoDown()
        self.sprite:setSequence("photodown")
        self.sprite:play()
        self:ajustToIdle()
    end

    function character:photoLeft()
        self.sprite:setSequence("photoleft")
        self.sprite.xScale = 1
        self.sprite:play()
        self:ajustToIdle()
    end

    function character:photoRight()
        self.sprite:setSequence("photoleft")
        self.sprite.xScale = -1
        self.sprite:play()
        self:ajustToIdle()
    end

    function character:selfPhotoTop()
        self.sprite:setSequence("selftop")
        self.sprite:play()
        self:ajustToIdle()
    end

    function character:selfPhotoDown()
        self.sprite:setSequence("selfdown")
        self.sprite:play()
        self:ajustToIdle()
    end

    function character:selfPhotoLeft()
        self.sprite:setSequence("selfleft")
        self.sprite.xScale = 1
        self.sprite:play()
        self:ajustToIdle()
    end

    function character:selfPhotoRight()
        self.sprite:setSequence("selfleft")
        self.sprite.xScale = -1
        self.sprite:play()
        self:ajustToIdle()
    end

    function character:play()
        self.sprite:play()
    end    

    return character
end

return Character