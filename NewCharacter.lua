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

    function character:toPhoto()
        
    end

    function character:toShare()
        
    end

    function character:toCharge()
        
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

    return character
end

return Character