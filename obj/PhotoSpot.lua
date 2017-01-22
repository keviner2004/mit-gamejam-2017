local MoveObject = require("MoveObject")
local Sprite = require("libs.Sprite")
local PhotoSpot = {}

PhotoSpot.new = function(options)
	options.dist = 0
	local spot = MoveObject.new(options)

    spot.taked = false

	local rect = Sprite["ui"].newAnimation({
        {
            frames = {
                "icon/heart/1",
                "icon/heart/2",
                "icon/heart/3",
            },
            time = 1000
        }
    })

    rect.xScale = 1.5
    rect.yScale = 1.5
    rect:play()

    spot:insert(rect)

	spot.tag = "photo"

	

	return spot
end

return PhotoSpot