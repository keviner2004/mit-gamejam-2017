local MoveObject = require("MoveObject")

local ChargeStation = {}

ChargeStation.new = function(options)
	options.dist = 0
	local station = MoveObject.new(options)

	local rect = display.newRect(0, 0, 100, 100)
    rect.fill = {0.5, 0.5, 0}
    station:insert(rect)

	station.tag = "charge"

	

	return station
end

return ChargeStation