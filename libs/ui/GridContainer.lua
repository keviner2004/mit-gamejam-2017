local json = require("json")

local GridContainer = {}

--[[
options = {
	cols = ,
	rows = ,
	gridW = ,
	gridH = ,
	maxW = ,
	maxH =
}
]]
GridContainer.new = function(options)
	if not options then
		return nil
	end

	local g = display.newGroup()

	g.gapSize = options.gapSize or 0

	if not (options.maxW and options.maxH) then
		if not (options.rows and options.cols) or not (options.gridW and options.gridH) then
			print("require rows and cols or gridW and gridH")
			return nil
		end
		g.maxW = options.cols * (options.gridW + g.gapSize) - g.gapSize
		g.maxH = options.rows * (options.gridH + g.gapSize) - g.gapSize
		g.numCols = options.cols
		g.numRows = options.rows
		g.gridW = options.gridW
		g.gridH = options.gridH
	elseif not (options.rows and options.cols) then
		if not (options.maxW and options.maxH) or not (options.gridW and options.gridH) then
			return nil
		end
		g.maxW = options.maxW
		g.maxH = options.maxH
		g.numCols = (options.maxW + g.gapSize) / (options.gridW + g.gapSize)
		g.numRows = (options.maxH + g.gapSize) / (options.gridH + g.gapSize)
		g.gridW = options.gridW
		g.gridH = options.gridH
	elseif not (options.gridW and options.gridH) then
		if not (options.rows and options.cols) or not (options.maxW and options.maxH) then
			return nil
		end
		g.maxW = options.maxW
		g.maxH = options.maxH
		g.numCols = options.cols
		g.numRows = options.rows
		g.gridW = (options.maxW - (options.cols - 1) * g.gapSize) / options.cols
		g.gridH = (options.maxH - (options.rows - 1) * g.gapSize) / options.rows
	elseif options.maxW == options.cols * (options.gridW + g.gapSize) - g.gapSize then
		g.maxW = options.maxW
		g.maxH = options.maxH
		g.numCols = options.cols
		g.numRows = options.rows
		g.gridW = options.gridW
		g.gridH = options.gridH
	else
		return nil
	end

	g.realW = g.numCols*(g.gridW+g.gapSize)-g.gapSize
	g.realH = g.numRows*(g.gridH+g.gapSize)-g.gapSize

	--print(json.prettify( g ))

	if options.backgroundColor then
		local r = display.newRect( 0, 0, g.realW, g.realH )
		r.fill = options.backgroundColor
		g:insert(r)
	end
	
	g.grid = {}
	for i = 1, g.numRows do
		g.grid[i] = {}
		for j = 1, g.numCols do
			g.grid[i][j] = display.newContainer(g.gridW, g.gridH)
			local t = g.grid[i][j]
			--[[
			local rect = display.newRect( 0, 0, g.gridW, g.gridH )
			rect.fill = {1,1,1,0}
			rect.stroke = {1,0,0}
			rect.strokeWidth = 2
			t:insert(rect)
			]]
			t.x = (g.gridW+g.gapSize) * (j-1) - g.realW/2 + (g.gridW)/2
			t.y = (g.gridH+g.gapSize) * (i-1) - g.realH/2 + (g.gridH)/2

			g:insert(t)
		end
	end

	g.oriInsert = g.insert
	g.insert = nil

	function g:insertAt(obj, i, j, x, y)
		if obj then
			local t = g.grid[i][j]
			if x then
				obj.x = x
			else
				obj.x = 0
			end
			if y then
				obj.y = y
			else
				obj.y = 0
			end
			
			t:insert(obj)
		end
	end

	function g:putOn(obj, i, j, flag)
		print(self.numRows, self.numCols, i, j)
		if flag and (i > self.numRows or i < 0 or j > self.numCols or j < 0) then
			print("Put Pn fail because out of bound")
			return
		end

		if i > self.numRows then
			i = self.numRows
		end
		if i < 0 then
			i = 0
		end
		if j > self.numCols then
			j = self.numCols
		end
		if j < 0 then
			j = 0
		end

		if obj then
			local t = self.grid[i][j]
			local circle = display.newCircle(0, 0, 10)
			t:insert(circle)
			local x, y = self.parent:contentToLocal(t:localToContent(0, 0))
			obj.x = x
			obj.y = y
			self.parent:insert(obj)
		end
	end	

	function g:getAbsLoc(i, j)
		local t = self.grid[i][j]
		return t:localToContent(0, 0)
	end

	function g:isOut(i, j)
		if i > self.numRows or i < 0 or j > self.numCols or j < 0 then
			return true
		end
		return false
	end

	return g
end

return GridContainer