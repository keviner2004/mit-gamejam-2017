local Sprite = require("libs.Sprite")

local Battery = {}

Battery.new = function()
    local frames = {
        "icon/new battery/5",
        "icon/new battery/4",
        "icon/new battery/3",
        "icon/new battery/2",
        "icon/new battery/1",
    }

    local battery = Sprite["ui"].newAnimation({
        {
            name = "seq",
            frames = frames,
            time = 2000
        },
    })

    battery.level = 5

    function battery:setLevel( frameIndex )
        if frameIndex < 0 then
            frameIndex = 0
        end

        if frameIndex > #frames then
            frameIndex = #frames
        end

        battery:setSequence("seq")
        battery:setFrame( frameIndex )
        self.level = frameIndex
    end

    function battery:charging(doit)
        if doit then
            battery:play()
        else
            battery:pause()
            battery:setFrame( self.level )
        end
    end


    battery:setLevel(5)

    return battery
end

return Battery