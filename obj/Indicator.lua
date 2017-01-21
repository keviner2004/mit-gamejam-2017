local Sprite = require("libs.Sprite")

local Indicator = {}

Indicator.new = function ()
    local indicator = Sprite["event"].newAnimation({
        {
            name = "1",
            frames = {
                "wifi waves/1/1",
                "wifi waves/1/2",
                "wifi waves/1/3",
            },
            time = 1000
        },
        {
            name = "2",
            frames = {
                "wifi waves/2/1",
                "wifi waves/2/2",
                "wifi waves/2/3",
            },
            time = 1000
        },
        {
            name = "3",
            frames = {
                "wifi waves/3/1",
                "wifi waves/3/2",
                "wifi waves/3/3",
            },
            time = 1000
        },
        {
            name = "4",
            frames = {
                "wifi waves/4/1",
                "wifi waves/4/2",
                "wifi waves/4/3",
            },
            time = 1000
        },
        {
            name = "5",
            frames = {
                "wifi waves/5/1",
                "wifi waves/5/2",
                "wifi waves/5/3",
            },
            time = 1000
        },
        {
            name = "6",
            frames = {
                "wifi waves/6/1",
                "wifi waves/6/2",
                "wifi waves/6/3",
            },
            time = 1000
        },
        {
            name = "7",
            frames = {
                "wifi waves/7/1",
                "wifi waves/7/2",
                "wifi waves/7/3",
            },
            time = 1000
        },
        {
            name = "8",
            frames = {
                "wifi waves/8/1",
                "wifi waves/8/2",
                "wifi waves/8/3",
            },
            time = 1000
        }
    })
    function indicator:setDir(dir)
        print("Set dir", dir)
        indicator:setSequence(tostring(dir))
        indicator:play()
    end

    return indicator

end

return Indicator