local config = require("GameConfig")
local MoveObject = {}

MoveObject.new = function(options)
	local obj = display.newGroup()
	local universe = options and options.universe or nil
	local dist = options and options.dist or -1

	obj.map = options and options.map or nil
	obj.xOffset = options and options.xOffset or 0
	obj.yOffset = options and options.yOffset or 0
	obj.i = options and options.i
	obj.j = options and options.j
	obj.transLock = false
	obj.moveCount = 0
	if dist == 0 then
		obj.map.grid[obj.i][obj.j].bg = obj
	else 
		obj.map.grid[obj.i][obj.j].obj = obj
	end
	obj.map.grid[obj.i][obj.j].dist = obj.map.grid[obj.i][obj.j].dist + dist

	obj.x, obj.y = universe:contentToLocal( obj.map.grid[obj.i][obj.j]:localToContent(0,0) )

	obj.x = obj.x + obj.xOffset
	obj.y = obj.y + obj.yOffset

	universe:insert(obj)

	local onComplete = function(event)
		obj.transLock = false
		if obj.dispatchEvent then
			obj:dispatchEvent({
				name = "movedone"
			})
		end
	end

	function obj:dispatchMoveEvent()
		self:dispatchEvent({
			name = "move",
			count = self.moveCount,
			i = self.i,
			j = self.j,
		})
	end

	function obj:moveToPos()
		local x, y = universe:contentToLocal( self.map.grid[self.i][self.j]:localToContent(0,0) )
		x = x + self.xOffset
		y = y + self.yOffset
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete,
			time = 500,
		})
		self.moveCount = self.moveCount + 1
		self:dispatchMoveEvent()
	end	

	function obj:toRight()
		if self.j == config.boardWSize or self.map.grid[self.i][self.j+1].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		-- set to new pos
		self.map.grid[self.i][self.j].obj = nil
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist +1
		self.j = self.j+1
		self.map.grid[self.i][self.j].obj = self
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist -1
		-- move
		self:moveToPos()
	end

	function obj:toDown()
		if self.i == config.boardHSize or self.map.grid[self.i+1][self.j].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		-- set to new pos
		self.map.grid[self.i][self.j].obj = nil
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist +1
		self.i = self.i+1
		self.map.grid[self.i][self.j].obj = self
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist -1
		-- move
		self:moveToPos()
	end

	function obj:toLeft()
		if self.j == 1 or self.map.grid[self.i][self.j-1].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		-- set to new pos
		self.map.grid[self.i][self.j].obj = nil
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist +1
		self.j = self.j-1
		self.map.grid[self.i][self.j].obj = self
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist -1
		-- move
		self:moveToPos()
	end

	function obj:toUp()
		if self.i == 1 or self.map.grid[self.i-1][self.j].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		-- set to new pos
		self.map.grid[self.i][self.j].obj = nil
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist +1
		self.i = self.i-1
		self.map.grid[self.i][self.j].obj = self
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist -1
		-- move
		self:moveToPos()
	end

	function obj:isUnderWifi()
		local wifiCount = self.map.grid[self.i][self.j].wifiCount
		if wifiCount > 0 then
			return true
		else
			return false
		end
	end

	return obj
end

return MoveObject