--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:51be79c375577a4c2e295c1bc16534eb:2ace782fb5b2cb239f0afaa3f9c849ff:c46243f411ca86fe596665ab352bd775$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- 1
            x=65,
            y=95,
            width=36,
            height=86,

            sourceX = 133,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=95,
            width=62,
            height=84,

            sourceX = 118,
            sourceY = 108,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=1,
            width=66,
            height=92,

            sourceX = 124,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=69,
            y=1,
            width=74,
            height=80,

            sourceX = 122,
            sourceY = 117,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=145,
            y=1,
            width=66,
            height=80,

            sourceX = 141,
            sourceY = 117,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=103,
            y=83,
            width=64,
            height=82,

            sourceX = 147,
            sourceY = 114,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=103,
            y=167,
            width=64,
            height=82,

            sourceX = 151,
            sourceY = 114,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=169,
            y=83,
            width=62,
            height=82,

            sourceX = 151,
            sourceY = 114,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=169,
            y=167,
            width=62,
            height=82,

            sourceX = 152,
            sourceY = 114,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 232,
    sheetContentHeight = 250
}

SheetInfo.frameIndex =
{

    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
    ["7"] = 7,
    ["8"] = 8,
    ["9"] = 9,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
