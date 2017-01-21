local MoveObject = require("MoveObject")

local ChargeStation = {}

ChargeStation.new = function(options)
	options.dist = 0
	local station = MoveObject.new(options)

	station.tag = "charge"

	

	return station
end

return ChargeStation