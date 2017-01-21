local MoveObject = require("MoveObject")

local ShareSpot = {}

ShareSpot.new = function()
	options.dist = 0
	local spot = MoveObject.new(options)

	spot.tag = "share"

	
	
	return spot
end

return ShareSpot