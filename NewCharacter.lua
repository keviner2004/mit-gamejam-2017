local Control = require("Control")

local config = require("GameConfig")

local Character = {}
local BaseCharacter = require("BaseCharacter")

Character.new = function (options)
    local character = BaseCharacter.new(options)
    local rect = display.newRect(0, 0, 100, 100)
    rect.fill = {0.5, 0.5, 0.5}
    character:insert(rect)
    character:setControl()

    function character:getObj(i, j)
    	return self.map.grid[i][j].obj
    end

    function character:getBg(i, j)
    	return self.map.grid[i][j].bg
    end

    function character:toActive()
    	-- rotate wifi
    	if self.facing == "down" and 
    			self.i ~= config.boardHSize and 
    			self:getObj(self.i+1, self.j) then
    		if self:getObj(self.i+1, self.j).tag == "WIFI" then
    			self.map.grid[self.i+1][self.j].obj:rotateClockwize45()
    		end
		elseif self.facing == "up" and 
				self.i ~= 1 and 
				self:getObj(self.i-1, self.j) then
			if self:getObj(self.i-1, self.j).tag == "WIFI" then
    			self.map.grid[self.i-1][self.j].obj:rotateClockwize45()
    		end
		elseif self.facing == "left" and 
				self.j ~= 1 and 
				self:getObj(self.i, self.j-1) then
			if self:getObj(self.i, self.j-1).tag == "WIFI" then
				self.map.grid[self.i][self.j-1].obj:rotateClockwize45()
			end
		elseif self.facing == "right" and 
				self.j ~= config.boardWSize and 
				self:getObj(self.i, self.j+1) then
			if self:getObj(self.i, self.j+1).tag == "WIFI" then
				self.map.grid[self.i][self.j+1].obj:rotateClockwize45()
			end
		end

		-- else
		local bg = self:getBg(self.i, self.j)
		if bg then
			if bg.tag == "charge" then

			elseif bg.tag == "photo" then

			elseif bg.tag == "share" then

			end
		end

    end

    return character
end

return Character