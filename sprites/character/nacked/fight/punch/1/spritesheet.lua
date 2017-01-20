--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:04a2b399a52a22de0b30cb5b08195078:5816505b0929a6165e660b826f388f88:c46243f411ca86fe596665ab352bd775$
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
            x=1,
            y=1,
            width=74,
            height=220,

            sourceX = 122,
            sourceY = 44,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=77,
            y=1,
            width=108,
            height=218,

            sourceX = 99,
            sourceY = 45,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=467,
            y=1,
            width=142,
            height=204,

            sourceX = 83,
            sourceY = 57,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=881,
            y=1,
            width=114,
            height=204,

            sourceX = 105,
            sourceY = 58,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=997,
            y=1,
            width=100,
            height=202,

            sourceX = 119,
            sourceY = 60,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=751,
            y=1,
            width=128,
            height=204,

            sourceX = 118,
            sourceY = 59,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=611,
            y=1,
            width=138,
            height=204,

            sourceX = 118,
            sourceY = 59,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=187,
            y=1,
            width=138,
            height=206,

            sourceX = 118,
            sourceY = 57,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=327,
            y=1,
            width=138,
            height=206,

            sourceX = 118,
            sourceY = 57,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 1098,
    sheetContentHeight = 222
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
