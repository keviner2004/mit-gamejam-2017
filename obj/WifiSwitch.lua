local MoveObject = require("MoveObject")
local Sprite = require("libs.Sprite")

local Switch = {}

Switch.new = function(options)
	options.dist = 0
	local switch = MoveObject.new(options)

    switch.sprite = Sprite["objects"].newAnimation({
        {
            name = "back",
            frames = {
                "wifi interact/back/1",
                "wifi interact/back/2",
                "wifi interact/back/3",
            },
            time = 1000
        },
        {
            name = "front",
            frames = {
                "wifi interact/front/1",
                "wifi interact/front/2",
                "wifi interact/front/3",
                "wifi interact/front/4",
                "wifi interact/front/5",
                "wifi interact/front/6",
                "wifi interact/front/7",
                "wifi interact/front/8",
            },
            time = 1000
        },
        {
            name = "left",
            frames = {
                "wifi interact/left/1",
                "wifi interact/left/2",
                "wifi interact/left/3",
                "wifi interact/left/4",
            },
            time = 1000
        },
        {
            name = "right",
            frames = {
                "wifi interact/right/1",
                "wifi interact/right/2",
                "wifi interact/right/3",
                "wifi interact/right/4",
            },
            time = 1000
        },
    })

    function switch:setDir(dir)
        self.sprite:setSequence(dir)
    end

    function switch:op(doit)
        if doit then
            self.sprite:play()
        else
            self.sprite:pause()
        end
    end 

	switch.tag = "charge"
    switch:insert(switch.sprite)
	switch.sprite:setSequence("front")

	return switch
end

return Switch