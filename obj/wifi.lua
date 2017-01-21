local MoveObject = require("MoveObject")
local Sprite = require("libs.Sprite")
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
	wifi.dir = 1

	wifi.y = wifi.y-60

	function wifi:rotateClockwize45()
		self:setDir(self.dir + 1)
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
			print("Check old pos ", oldAffectedAreas[i].i, oldAffectedAreas[i].j)
			local checkGrid = self.map.grid[oldAffectedAreas[i].i][oldAffectedAreas[i].j]
			if checkGrid.obj then
				print("The object on the tile is ", checkGrid.obj.tag, checkGrid.wifiCount)
			end
			if checkGrid.obj and checkGrid.obj.tag == "fatguy" and checkGrid.wifiCount == 0 then
				print("move the fat guy")
				local di = newAffectedAreas[i].i - oldAffectedAreas[i].i
				local dj = newAffectedAreas[i].j - oldAffectedAreas[i].j
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

	function wifi:rotateClockwizen45()
		self:setDir(self.dir - 1)
		self:hideGrid()
		local oldAffectedAreas = {}
		local newAffectedAreas = {}
		-- change self.map's wifi count
		for i = 1, #self.affectedAreas do
			--cache old area
			if self.affectedAreas[i] == Wifi.AREA_LEFTTOP then
				oldAffectedAreas[i] = {i = wifi.i-1, j = wifi.j-1}
				newAffectedAreas[i] = {i = wifi.i, j = wifi.j-1}
				self.map.grid[wifi.i-1][wifi.j-1].wifiCount = self.map.grid[wifi.i-1][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i][wifi.j-1].wifiCount = self.map.grid[wifi.i][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFT
			elseif self.affectedAreas[i] == Wifi.AREA_TOP then
				oldAffectedAreas[i] = {i = wifi.i-1, j = wifi.j}
				newAffectedAreas[i] = {i = wifi.i-1, j = wifi.j-1}
				self.map.grid[wifi.i-1][wifi.j].wifiCount = self.map.grid[wifi.i-1][wifi.j].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j-1].wifiCount = self.map.grid[wifi.i-1][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFTTOP
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTTOP then
				oldAffectedAreas[i] = {i = wifi.i-1, j = wifi.j+1}
				newAffectedAreas[i] = {i = wifi.i-1, j = wifi.j}
				self.map.grid[wifi.i-1][wifi.j+1].wifiCount = self.map.grid[wifi.i-1][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j].wifiCount = self.map.grid[wifi.i-1][wifi.j].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_TOP
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHT then
				oldAffectedAreas[i] = {i = wifi.i, j = wifi.j+1}
				newAffectedAreas[i] = {i = wifi.i-1, j = wifi.j+1}
				self.map.grid[wifi.i][wifi.j+1].wifiCount = self.map.grid[wifi.i][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i-1][wifi.j+1].wifiCount = self.map.grid[wifi.i-1][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGHTTOP
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTBTM then
				oldAffectedAreas[i] = {i = wifi.i+1, j = wifi.j+1}
				newAffectedAreas[i] = {i = wifi.i, j = wifi.j+1}
				self.map.grid[wifi.i+1][wifi.j+1].wifiCount = self.map.grid[wifi.i+1][wifi.j+1].wifiCount -1
				self.map.grid[wifi.i][wifi.j+1].wifiCount = self.map.grid[wifi.i][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGHT
			elseif self.affectedAreas[i] == Wifi.AREA_BTM then
				oldAffectedAreas[i] = {i = wifi.i+1, j = wifi.j}
				newAffectedAreas[i] = {i = wifi.i+1, j = wifi.j+1}
				self.map.grid[wifi.i+1][wifi.j].wifiCount = self.map.grid[wifi.i+1][wifi.j].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j+1].wifiCount = self.map.grid[wifi.i+1][wifi.j+1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_RIGHTBTM
			elseif self.affectedAreas[i] == Wifi.AREA_LEFTBTM then
				oldAffectedAreas[i] = {i = wifi.i+1, j = wifi.j-1}
				newAffectedAreas[i] = {i = wifi.i+1, j = wifi.j}
				self.map.grid[wifi.i+1][wifi.j-1].wifiCount = self.map.grid[wifi.i+1][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j].wifiCount = self.map.grid[wifi.i+1][wifi.j].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_BTM
			elseif self.affectedAreas[i] == Wifi.AREA_LEFT then
				oldAffectedAreas[i] = {i = wifi.i, j = wifi.j-1}
				newAffectedAreas[i] = {i = wifi.i+1, j = wifi.j-1}
				self.map.grid[wifi.i][wifi.j-1].wifiCount = self.map.grid[wifi.i][wifi.j-1].wifiCount -1
				self.map.grid[wifi.i+1][wifi.j-1].wifiCount = self.map.grid[wifi.i+1][wifi.j-1].wifiCount +1
				self.affectedAreas[i] = Wifi.AREA_LEFTBTM
			else
				print("Fuck, ",self.affectedAreas[i])
			end
		end

		for i = 1, #oldAffectedAreas do
			print("Check old pos ", oldAffectedAreas[i].i, oldAffectedAreas[i].j)
			local checkGrid = self.map.grid[oldAffectedAreas[i].i][oldAffectedAreas[i].j]
			if checkGrid.obj then
				print("The object on the tile is ", checkGrid.obj.tag, checkGrid.wifiCount)
			end
			if checkGrid.obj and checkGrid.obj.tag == "fatguy" and checkGrid.wifiCount == 0 then
				print("move the fat guy")
				local di = newAffectedAreas[i].i - oldAffectedAreas[i].i
				local dj = newAffectedAreas[i].j - oldAffectedAreas[i].j
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

	function cast( ... )
		-- body
	end

	function wifi:showGrid()
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
				indicator.alpha = 0.3
				self.indicatorGroup:insert(indicator)
				indicator.x = x
				indicator.y = y
			end

		end
	end

	function wifi:init()
		for i = 1, #self.affectedAreas do
			--cache old area
			if self.affectedAreas[i] == Wifi.AREA_LEFTTOP then
				self.map.grid[wifi.i-1][wifi.j-1].wifiCount = self.map.grid[wifi.i-1][wifi.j-1].wifiCount +1
			elseif self.affectedAreas[i] == Wifi.AREA_TOP then
				self.map.grid[wifi.i-1][wifi.j].wifiCount = self.map.grid[wifi.i-1][wifi.j].wifiCount +1
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTTOP then
				self.map.grid[wifi.i-1][wifi.j+1].wifiCount = self.map.grid[wifi.i-1][wifi.j+1].wifiCount +1
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHT then
				self.map.grid[wifi.i][wifi.j+1].wifiCount = self.map.grid[wifi.i][wifi.j+1].wifiCount +1
			elseif self.affectedAreas[i] == Wifi.AREA_RIGHTBTM then
				self.map.grid[wifi.i+1][wifi.j+1].wifiCount = self.map.grid[wifi.i+1][wifi.j+1].wifiCount +1
			elseif self.affectedAreas[i] == Wifi.AREA_BTM then
				self.map.grid[wifi.i+1][wifi.j].wifiCount = self.map.grid[wifi.i+1][wifi.j].wifiCount +1
			elseif self.affectedAreas[i] == Wifi.AREA_LEFTBTM then
				self.map.grid[wifi.i+1][wifi.j-1].wifiCount = self.map.grid[wifi.i+1][wifi.j-1].wifiCount +1
			elseif self.affectedAreas[i] == Wifi.AREA_LEFT then
				self.map.grid[wifi.i][wifi.j-1].wifiCount = self.map.grid[wifi.i][wifi.j-1].wifiCount +1
			else
				print("Fuck, ",self.affectedAreas[i])
			end
		end
	end

	function wifi:hideGrid()
		for i = 1, self.indicatorGroup.numChildren do
			self.indicatorGroup[1]:removeSelf()
		end
	end

	function wifi:setDir(dir)
		if dir > 8 then
			dir = 1
		elseif dir < 1 then
			dir = 8
		end
		self.dir = dir
		self.sprite:setSequence(tostring(dir))
	end

	wifi:init()

	wifi.sprite = Sprite["objects"].newAnimation({
		{
			name = "1",
			frames = {
				"wifi/1"
			}
		},
		{
			name = "2",
			frames = {
				"wifi/2"
			}
		},
		{
			name = "3",
			frames = {
				"wifi/3"
			}
		},
		{
			name = "4",
			frames = {
				"wifi/4"
			}
		},
		{
			name = "5",
			frames = {
				"wifi/5"
			}
		},
		{
			name = "6",
			frames = {
				"wifi/6"
			}
		},
		{
			name = "7",
			frames = {
				"wifi/7"
			}
		},
		{
			name = "8",
			frames = {
				"wifi/8"
			}
		}
	})

	wifi:insert(wifi.sprite)
	wifi:setDir(1)

	return wifi
end

return Wifi