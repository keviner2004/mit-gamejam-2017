local MoveObject = require("MoveObject")
local Sprite = require("libs.Sprite") 
local ShareSpot = {}

ShareSpot.new = function(options)
	options.dist = 0
	local spot = MoveObject.new(options)
	local rect = Sprite["ui"].newAnimation({
        {
            frames = {
                "icon/card/1",
                "icon/card/2",
                "icon/card/3",
            },
            time = 1000
        }
    })

    rect.xScale = 1.5
    rect.yScale = 1.5

    rect:play()
    spot:insert(rect)

	spot.tag = "share"

	return spot
end

return ShareSpot