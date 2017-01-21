local MoveObject = {}

MoveObject.new = function(options)
	local obj = display.newGroup()
	local universe = options and options.universe or nil

	obj.map = options and options.map or nil
	obj.i = options and options.i
	obj.j = options and options.j
	obj.transLock = false

	obj.x, obj.y = universe:contentToLocal( obj.map.grid[obj.i][obj.j]:localToContent(0,0) )

	universe:insert(obj)

	local onComplete = function(event)
		obj.transLock = false
	end

	function obj:toRight()
		if self.map.grid[self.i][self.j+1].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		-- belong grid
		self.map.grid[self.i][self.j].obj = nil
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist +1
		self.j = self.j+1
		self.map.grid[self.i][self.j].obj = self
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist -1
		-- move
		local x, y = universe:contentToLocal( self.map.grid[self.i][self.j]:localToContent(0,0) )
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete
		})
	end

	function obj:toDown()
		if self.map.grid[self.i+1][self.j].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		self.map.grid[self.i][self.j].obj = nil
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist +1
		self.i = self.i+1
		self.map.grid[self.i][self.j].obj = self
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist -1
		-- move
		local x, y = universe:contentToLocal( self.map.grid[self.i][self.j]:localToContent(0,0) )
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete
		})
	end

	function obj:toLeft()
		if self.map.grid[self.i][self.j-1].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		self.map.grid[self.i][self.j].obj = nil
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist +1
		self.j = self.j-1
		self.map.grid[self.i][self.j].obj = self
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist -1
		-- move
		local x, y = universe:contentToLocal( self.map.grid[self.i][self.j]:localToContent(0,0) )
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete
		})
	end

	function obj:toUp()
		if self.map.grid[self.i-1][self.j].dist < 0 or self.transLock then
			return
		end
		self.transLock = true
		self.map.grid[self.i][self.j].obj = nil
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist +1
		self.i = self.i-1
		self.map.grid[self.i][self.j].obj = self
		self.map.grid[self.i][self.j].dist = self.map.grid[self.i][self.j].dist -1
		-- move
		local x, y = universe:contentToLocal( self.map.grid[self.i][self.j]:localToContent(0,0) )
		transition.to(self, {
			x = x,
			y = y,
			onComplete = onComplete
		})
	end

	return obj
end

return MoveObject