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
	wifi.indicatorGroup = display.newGroup()


	function wifi:rotateClockwize45()
		self:hideGrid()
		local oldAffectedAreas = {}
		local newAffectedAreas = {}
		-- change self.map's wifi count
		for i = 1, #self.affectedAreas do
			--cache old area
			if self.affectedAreas[i] == Wifi.AREA_LEFTTOP then
				oldAffectedAreas[i] = {i = wifi.i-1, j = wifi.j-1}
				newAffectedAreas[i] = {i = wifi.i-1, j = wifi.j}
				self.map.grid[wifi.i-1][wifi.j-1].wifiCount = self.map.grid[wifi.i-1][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j].wifiCount = self.map.grid[wifi.i-1][wifi.j].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_TOP
			elseif self.affectedAreas[i] == Wifi.AREA_TOP then
				oldAffectedAreas[i] = {i = wifi.i-1, j = wifi.j}
				newAffectedAreas[i] = {i = wifi.i-1, j = wifi.j+1}
				self.map.grid[wifi.i-1][wifi.j].wifiCount = self.map.grid[wifi.i-1][wifi.j].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j+1].wifiCount = self.map.grid[wifi.i-1][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGHTTOP
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTTOP then
				oldAffectedAreas[i] = {i = wifi.i-1, j = wifi.j+1}
				newAffectedAreas[i] = {i = wifi.i, j = wifi.j+1}
				self.map.grid[wifi.i-1][wifi.j+1].wifiCount = self.map.grid[wifi.i-1][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i][wifi.j+1].wifiCount = self.map.grid[wifi.i][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGHT
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHT then
				oldAffectedAreas[i] = {i = wifi.i, j = wifi.j+1}
				newAffectedAreas[i] = {i = wifi.i+1, j = wifi.j+1}
				self.map.grid[wifi.i][wifi.j+1].wifiCount = self.map.grid[wifi.i][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j+1].wifiCount = self.map.grid[wifi.i+1][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGHTBTM
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTBTM then
				oldAffectedAreas[i] = {i = wifi.i+1, j = wifi.j+1}
				newAffectedAreas[i] = {i = wifi.i+1, j = wifi.j}
				self.map.grid[wifi.i+1][wifi.j+1].wifiCount = self.map.grid[wifi.i+1][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j].wifiCount = self.map.grid[wifi.i+1][wifi.j].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_BTM
			elseif self.affectedAreas[i] == Wifi.AREA_BTM then
				oldAffectedAreas[i] = {i = wifi.i+1, j = wifi.j}
				newAffectedAreas[i] = {i = wifi.i+1, j = wifi.j-1}
				self.map.grid[wifi.i+1][wifi.j].wifiCount = self.map.grid[wifi.i+1][wifi.j].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j-1].wifiCount = self.map.grid[wifi.i+1][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFTBTM
			elseif self.affectedAreas[i] == Wifi.AREA_LEFTBTM then
				oldAffectedAreas[i] = {i = wifi.i+1, j = wifi.j-1}
				newAffectedAreas[i] = {i = wifi.i, j = wifi.j-1}
				self.map.grid[wifi.i+1][wifi.j-1].wifiCount = self.map.grid[wifi.i+1][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i][wifi.j-1].wifiCount = self.map.grid[wifi.i][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFT
			elseif self.affectedAreas[i] == Wifi.AREA_LEFT then
				oldAffectedAreas[i] = {i = wifi.i, j = wifi.j-1}
				newAffectedAreas[i] = {i = wifi.i-1, j = wifi.j-1}
				self.map.grid[wifi.i][wifi.j-1].wifiCount = self.map.grid[wifi.i][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j-1].wifiCount = self.map.grid[wifi.i-1][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFTTOP
			else
				print("Fuck, ",self.affectedAreas[i])
			end
		end

		for i = 1, #oldAffectedAreas do
			local checkGrid = self.map.grid[oldAffectedAreas[i].i][oldAffectedAreas[i].j]
			if checkGrid.obj.tag == "FATTY" and grid.obj.wifiCount == 0 then
				local di = oldAffectedAreas[i] - newAffectedAreas[i]
				local dj = oldAffectedAreas[j] - newAffectedAreas[j]
				if di > 0 then
					checkGrid.obj:toDown()
				end
				if di < 0 then
					checkGrid.obj:toUp()
				end
				if dj > 0 then
					checkGrid.obj:toRight()
				end
				if dj < 0 then
					checkGrid.obj:toLeft()
				end
			end
		end

		self:showGrid()
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

	function cast( ... )
		-- body
	end

	function wifi:showGrid()
		if not self.affectedAreas then
			return
		end
		print("showGrid: ", #self.affectedAreas)
		for i = 1, #self.affectedAreas do
			local newi, newj
			if self.affectedAreas[i] == Wifi.AREA_LEFTTOP then
				newi = self.i - 1
				newj =  self.j - 1
			elseif self.affectedAreas[i] == Wifi.AREA_TOP then
				newi = self.i - 1
				newj = self.j
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTTOP then
				newi = self.i - 1
				newj = self.j + 1
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHT then
				newi = self.i
				newj = self.j + 1
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTBTM then
				newi = self.i + 1
				newj = self.j + 1
			elseif self.affectedAreas[i] == Wifi.AREA_BTM then
				newi = self.i + 1
				newj = self.j
			elseif self.affectedAreas[i] == Wifi.AREA_LEFTBTM then
				newi = self.i + 1
				newj = self.j - 1
			elseif self.affectedAreas[i] == Wifi.AREA_LEFT then
				newi = self.i
				newj = self.j - 1
			end
			print("put wifi to ", self.affectedAreas[i], newi, newj)
			if not self.map:isOut(newi, newj) then
				local x, y = self.indicatorGroup:contentToLocal(self.map:getAbsLoc(newi, newj))
				local indicator = display.newRect(0, 0, 100, 100)
				indicator.fill = {0,0,1}
				indicator.alpha = 0.8
				self.indicatorGroup:insert(indicator)
				indicator.x = x
				indicator.y = y
			end

		end
	end

	function wifi:hideGrid()
		for i = 1, self.indicatorGroup.numChildren do
			self.indicatorGroup[1]:removeSelf()
		end
	end

	return wifi
end

return Wifi