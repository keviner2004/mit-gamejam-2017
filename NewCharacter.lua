local Control = require("Control")

local sfx = require("libs.sfx")

local config = require("GameConfig")

local Character = {}
local BaseCharacter = require("BaseCharacter")

Character.new = function (options)
    local character = BaseCharacter.new(options)
    character:setControl()

    character:setSpriteTag("new_character")
    character:setWalkUpAnimation({
        "back/walking/1",
        "back/walking/2",
        "back/walking/3",
        "back/walking/4",
        "back/walking/5",
    })

    character:setWalkDownAnimation({
        "front/walking/1",
        "front/walking/2",
        "front/walking/3",
        "front/walking/4",
        "front/walking/5",
    })

    character:setWalkLeftAnimation({
        "horizon/walking/1",
        "horizon/walking/2",
        "horizon/walking/3",
        "horizon/walking/4",
        "horizon/walking/5",
        "horizon/walking/6",
        "horizon/walking/7",
        "horizon/walking/8",

    })

    character:setIdleUpAnimation({
        "back/normal/1",
    })

    character:setIdleDownAnimation({
        "front/normal/1",
    })

    character:setIdleLeftAnimation({
        "horizon/normal/1",
    })


    character:setPhotoUpAnimation({
        "back/photographing/1",
    })

    character:setPhotoDownAnimation({
        "front/photographing/1",
    })

    character:setPhotoLeftAnimation({
        "horizon/photographing/1",
    })

    character:setSelfUpAnimation({
        "back/self/1",
    })

    character:setSelfDownAnimation({
        "front/self/1",
    })

    character:setSelfLeftAnimation({
        "horizon/self/1",
    })

    character:genAnimation()

    function character:getObj(i, j)
    	return self.map.grid[i][j].obj
    end

    function character:getBg(i, j)
    	return self.map.grid[i][j].bg
    end

    function character:toPhoto()
        print("toPhoto")
        if self.facing == "up" then
            self:photoUp()
        elseif self.facing == "down" then
            self:photoDown()
        elseif self.facing == "left" then
            self:photoLeft()
        elseif self.facing == "right" then
            self:photoRight()
        end
        sfx:play("photo")
    end

    function character:toShare()
       print("toShare")
       sfx:play("share")
    end

    function character:toCharge()
        print("toCharge")
        sfx:play("charge")
        -- benefit
        if self.charge ~= self.maxCharge then
            self.charge = self.charge + 1
            self:dispatchEvent({name="battery", charge = self.charge})    
        end
        self.moveCount = 0
        -- penalty
    end

    function character:toRotateWifi(dir)
    	if self.facing == "down" and 
    			self.i ~= config.boardHSize and 
    			self:getObj(self.i+1, self.j) and 
    			self:getObj(self.i+1, self.j).tag == "WIFI" then
            if dir > 0 then
    	        self.map.grid[self.i+1][self.j].obj:rotateClockwize45()
            else
                self.map.grid[self.i+1][self.j].obj:rotateClockwizen45()
            end
		elseif self.facing == "up" and 
				self.i ~= 1 and 
				self:getObj(self.i-1, self.j) and 
				self:getObj(self.i-1, self.j).tag == "WIFI" then
            if dir > 0 then
    		    self.map.grid[self.i-1][self.j].obj:rotateClockwize45()
            else
                self.map.grid[self.i-1][self.j].obj:rotateClockwizen45()
            end
		elseif self.facing == "left" and 
				self.j ~= 1 and 
				self:getObj(self.i, self.j-1) and 
				self:getObj(self.i, self.j-1).tag == "WIFI" then
            if dir > 0 then
			    self.map.grid[self.i][self.j-1].obj:rotateClockwize45()
            else
                self.map.grid[self.i][self.j-1].obj:rotateClockwizen45()
            end
		elseif self.facing == "right" and 
				self.j ~= config.boardWSize and 
				self:getObj(self.i, self.j+1) and 
				self:getObj(self.i, self.j+1).tag == "WIFI" then
            if dir > 0 then
			    self.map.grid[self.i][self.j+1].obj:rotateClockwize45()
            else
                self.map.grid[self.i][self.j+1].obj:rotateClockwizen45()
            end
		end    		
    end

    character:addEventListener("move", function(event)
        print("Character moved ", event.count, character.charge)
        if event.count % 10 == 0 then
            if character.charge > 1 then
                character.charge = character.charge -1
                character:dispatchEvent({
                    name = "battery",
                    charge = character.charge
                })
            end
        end
    end)
    ----[[
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
    ----]]

    function character:dispatchFocusChangeEvent(hasWifi)
        if self.dispatchEvent then
            self:dispatchEvent({
                name = "focus",
                value = self.focus,
                hasWifi = hasWifi
            })
        end
    end

    function character:enterFrame(event)
        if not self.x then
            Runtime:removeEventListener(enterFrame)
            return
        end

        if self.map.grid[self.i][self.j].wifiCount <=0 then
            if self.focus > 0 then
                if self.focus - self.focusOffset > 0 then
                    self.focus = self.focus - self.focusOffset
                else
                    self.focus = 0
                end
                self:dispatchFocusChangeEvent(false)
            end
        else
            if self.focus < self.maxFocus then
                if self.focus + self.focusOffset < self.maxFocus then
                    self.focus = self.focus + self.focusOffset
                else
                    self.focus = self.maxFocus
                end
                self:dispatchFocusChangeEvent(true)
            end
        end
    end

    Runtime:addEventListener("enterFrame", character)

    return character
end

return Character