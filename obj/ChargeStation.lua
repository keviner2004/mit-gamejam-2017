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
    --[[
	local rect = display.newRect(0, 0, 100, 100)
    rect.fill = {0.5, 0.5, 0}
    station:insert(rect)
    ]]
	station.tag = "charge"
    station:insert(sprite)
	sprite:setSequence("idle")
    sprite:play()

    sprite.y = sprite.y - 60
    --sprite.xScale = 1.5
    --sprite.yScale = 1.5

	return station
end

return ChargeStation