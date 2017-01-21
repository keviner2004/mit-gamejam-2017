local MoveObject = require("MoveObject")
local Sprite = require("libs.Sprite")

local ChargeStation = {}

ChargeStation.new = function(options)
	options.dist = 0
	local station = MoveObject.new(options)

    local sprite = Sprite["objects"].newAnimation({
        {
            name = "idle",
            frames = {
                "charge station/1",
                "charge station/2",
                "charge station/3",
            },
            time = 1000
        }
    })

	station.tag = "charge"
    station:insert(sprite)
	sprite:setSequence("idle")
    sprite:play()

    --sprite.y = sprite.y - 60

	return station
end

return ChargeStation