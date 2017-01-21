local Sprite = require("libs.Sprite")

local Head = {}

Head.new = function()
    local frames = {
        "face/4",
        "face/3",
        "face/2",
        "face/1",
    }

    local head = Sprite["ui"].newAnimation({
        {
            name = "seq",
            frames = frames,
            time = 2000
        },
    })

    head.level = 5

    function head:setLevel( frameIndex )
        if frameIndex < 0 then
            frameIndex = 0
        end

        if frameIndex > #frames then
            frameIndex = #frames
        end

        head:setSequence("seq")
        head:setFrame( frameIndex )
        self.level = frameIndex
    end

    head:setLevel(5)

    return head
end

return Head