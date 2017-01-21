local MoveObject = require("MoveObject")

local Wifi = {}

Wifi.AREA_LEFTTOP = 1
Wifi.AREA_LEFT = 2
Wifi.AREA_LEFTBTM = 3
Wifi.AREA_TOP = 4
Wifi.AREA_BTM = 5
Wifi.AREA_RIGHTTOP = 6
Wifi.AREA_RIGHT = 7
Wifi.AREA_RIGHTBTM = 8

Wifi.new = function(options)
	local wifi = MoveObject.new(options)
	wifi.affectedAreas = options and options.areas
	wifi.tag = "WIFI"

	function wifi:rotateClockwize45()
		-- change self.map's wifi count
		for i = 1, #self.affectedAreas do
			if self.affectedAreas[i] == Wifi.AREA_LEFTTOP then
				self.map.grid[wifi.i-1][wifi.j-1].wifiCount = self.map.grid[wifi.i-1][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j].wifiCount = self.map.grid[wifi.i-1][wifi.j].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_TOP
			elseif self.affectedAreas[i] == Wifi.AREA_TOP then
				self.map.grid[wifi.i-1][wifi.j].wifiCount = self.map.grid[wifi.i-1][wifi.j].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j+1].wifiCount = self.map.grid[wifi.i-1][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGHTTOP
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTTOP then
				self.map.grid[wifi.i-1][wifi.j+1].wifiCount = self.map.grid[wifi.i-1][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i][wifi.j+1].wifiCount = self.map.grid[wifi.i][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGH
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHT then
				self.map.grid[wifi.i][wifi.j+1].wifiCount = self.map.grid[wifi.i][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j+1].wifiCount = self.map.grid[wifi.i+1][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGHTBTM
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTBTM then
				self.map.grid[wifi.i+1][wifi.j+1].wifiCount = self.map.grid[wifi.i+1][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j].wifiCount = self.map.grid[wifi.i+1][wifi.j].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_BTM
			elseif self.affectedAreas[i] == Wifi.AREA_BTM then
				self.map.grid[wifi.i+1][wifi.j].wifiCount = self.map.grid[wifi.i+1][wifi.j].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j-1].wifiCount = self.map.grid[wifi.i+1][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFTBTM
			elseif self.affectedAreas[i] == Wifi.AREA_LEFTBTM then
				self.map.grid[wifi.i+1][wifi.j-1].wifiCount = self.map.grid[wifi.i+1][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i][wifi.j-1].wifiCount = self.map.grid[wifi.i][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFT
			elseif self.affectedAreas[i] == Wifi.AREA_LEFT then
				self.map.grid[wifi.i][wifi.j-1].wifiCount = self.map.grid[wifi.i][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j-1].wifiCount = self.map.grid[wifi.i-1][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFTTOP
			end
		end
		-- check needs for fatty
		local needsForFatty = function(grid, funcName)
			if grid.obj and grid.obj.type == "FATTY" and grid.obj.isAffected and grid.obj.wifiCount == 0 then
				grid.obj.isAffected = false
				grid.obj[funcName]()
			end
		end
		needsForFatty(self.map.grid[wifi.i-1][wifi.j-1], "toRight")
		needsForFatty(self.map.grid[wifi.i-1][wifi.j], "toRight")
		needsForFatty(self.map.grid[wifi.i-1][wifi.j+1], "toDown")
		needsForFatty(self.map.grid[wifi.i][wifi.j-1], "toDown")
		needsForFatty(self.map.grid[wifi.i][wifi.j-1], "toLeft")
		needsForFatty(self.map.grid[wifi.i+1][wifi.j-1], "toLeft")
		needsForFatty(self.map.grid[wifi.i+1][wifi.j], "toUp")
		needsForFatty(self.map.grid[wifi.i+1][wifi.j+1], "toUp")
	end

	function wifi:isAffected(char)
		for i = 1, #self.affectedAreas do
			if wifi.affectedAreas[i] == Wifi.AREA_LEFTTOP then
				if char.i == wifi.i-1 and char.j == wifi.j-1 then
					return true
				end
			elseif wifi.affectedAreas[i] == Wifi.AREA_TOP then
				if char.i == wifi.i-1 and char.j == wifi.j then
					return true
				end
			elseif wifi.affectedAreas[i] == Wifi.AREA_RIGHTTOP then
				if char.i == wifi.i-1 and char.j == wifi.j+1 then
					return true
				end
			elseif wifi.affectedAreas[i] == Wifi.AREA_RIGHT then
				if char.i == wifi.i and char.j == wifi.j-1 then
					return true
				end
			elseif wifi.affectedAreas[i] == Wifi.AREA_RIGHTBTM then
				if char.i == wifi.i+1 and char.j == wifi.j-1 then
					return true
				end
			elseif wifi.affectedAreas[i] == Wifi.AREA_BTM then
				if char.i == wifi.i+1 and char.j == wifi.j then
					return true
				end
			elseif wifi.affectedAreas[i] == Wifi.AREA_LEFTBTM then
				if char.i == wifi.i+1 and char.j == wifi.j+1 then
					return true
				end
			elseif wifi.affectedAreas[i] == Wifi.AREA_LEFT then
				if char.i == wifi.i and char.j == wifi.j+1 then
					return true
				end
			end
		end
		return false
	end

	function wifi:showGrid()
		if not self.affectedAreas then
			return
		end
		for i = 1, #self.affectedAreas do
			local indicator = display.newRect(0, 0, 100, 100)
			indicator.fill = {0,0,1}
			
			if self.affectedAreas[i] == Wifi.AREA_LEFTTOP then
				self.map:putOn(indicator, self.i - 1, self.j - 1, true)
			elseif self.affectedAreas[i] == Wifi.AREA_TOP then
				self.map:putOn(indicator, self.i, self.j - 1, true)
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTTOP then
				self.map:putOn(indicator, self.i + 1, self.j - 1, true)
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHT then
				self.map:putOn(indicator, self.i + 1, self.j, true)
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTBTM then
				self.map:putOn(indicator, self.i + 1, self.j + 1, true)
			elseif self.affectedAreas[i] == Wifi.AREA_BTM then
				self.map:putOn(indicator, self.i, self.j + 1, true)
			elseif self.affectedAreas[i] == Wifi.AREA_LEFTBTM then
				self.map:putOn(indicator, self.i - 1, self.j + 1, true)
			elseif self.affectedAreas[i] == Wifi.AREA_LEFT then
				self.map:putOn(indicator, self.i - 1, self.j, true)
			end
			
		end
	end

	return wifi
end

return Wifi