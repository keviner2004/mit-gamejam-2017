local MoveObject = {}

MoveObject.new = function(options)
	local obj = display.newGroup()
	local universe = options and options.universe or nil
	local map = options and options.map or nil
	
	obj.i = options and options.i
	obj.j = options and options.j
	obj.transLock = false

	obj.x, obj.y = universe:contentToLocal( map.grid[obj.i][obj.j]:localToContent(0,0) )

	local onComplete = function(event)
		obj.transLock = false
	end

	function obj:toRight()
		if map.grid[self.i][self.j+1].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		-- belong grid
		map.grid[self.i][self.j].obj = nil
		map.grid[self.i][self.j].dist = map.grid[self.i][self.j].dist +1
		self.j = self.j+1
		map.grid[self.i][self.j].obj = self
		map.grid[self.i][self.j].dist = map.grid[self.i][self.j].dist -1
		-- move
		local x, y = universe:contentToLocal( map.grid[self.i][self.j]:localToContent(0,0) )
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete
		})
	end

	function obj:toDown()
		if map.grid[self.i+1][self.j].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		map.grid[self.i][self.j].obj = nil
		map.grid[self.i][self.j].dist = map.grid[self.i][self.j].dist +1
		self.i = self.i+1
		map.grid[self.i][self.j].obj = self
		map.grid[self.i][self.j].dist = map.grid[self.i][self.j].dist -1
		-- move
		local x, y = universe:contentToLocal( map.grid[self.i][self.j]:localToContent(0,0) )
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete
		})
	end

	function obj:toLeft()
		if map.grid[self.i][self.j-1].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		map.grid[self.i][self.j].obj = nil
		map.grid[self.i][self.j].dist = map.grid[self.i][self.j].dist +1
		self.j = self.j-1
		map.grid[self.i][self.j].obj = self
		map.grid[self.i][self.j].dist = map.grid[self.i][self.j].dist -1
		-- move
		local x, y = universe:contentToLocal( map.grid[self.i][self.j]:localToContent(0,0) )
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete
		})
	end

	function obj:toUp()
		if map.grid[self.i-1][self.j].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		map.grid[self.i][self.j].obj = nil
		map.grid[self.i][self.j].dist = map.grid[self.i][self.j].dist +1
		self.i = self.i-1
		map.grid[self.i][self.j].obj = self
		map.grid[self.i][self.j].dist = map.grid[self.i][self.j].dist -1
		-- move
		local x, y = universe:contentToLocal( map.grid[self.i][self.j]:localToContent(0,0) )
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete
		})
	end

	return obj
end

return MoveObject