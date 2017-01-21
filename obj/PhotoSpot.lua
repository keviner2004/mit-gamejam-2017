local MoveObject = require("MoveObject")

local PhotoSpot = {}

PhotoSpot.new = function()
	options.dist = 0
	local spot = MoveObject.new(options)

	spot.tag = "photo"

	

	return spot
end

return PhotoSpot