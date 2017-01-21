local MoveObject = require("MoveObject")

local PhotoSpot = {}

PhotoSpot.new = function(options)
	options.dist = 0
	local spot = MoveObject.new(options)

	local rect = display.newRect(0, 0, 100, 100)
    rect.fill = {0, 0.5, 0.5}
    spot:insert(rect)

	spot.tag = "photo"

	

	return spot
end

return PhotoSpot