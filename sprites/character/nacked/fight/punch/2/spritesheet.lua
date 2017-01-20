--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:67867cc4f1a3d7535566ccda970aea77:1be6d7835a23360cc9e12bb100966a2e:c46243f411ca86fe596665ab352bd775$
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
            width=122,
            height=222,

            sourceX = 71,
            sourceY = 42,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=125,
            y=1,
            width=76,
            height=220,

            sourceX = 108,
            sourceY = 44,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=677,
            y=1,
            width=86,
            height=218,

            sourceX = 113,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=571,
            y=1,
            width=104,
            height=218,

            sourceX = 112,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=327,
            y=1,
            width=120,
            height=218,

            sourceX = 103,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=203,
            y=1,
            width=122,
            height=218,

            sourceX = 102,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=449,
            y=1,
            width=120,
            height=218,

            sourceX = 105,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 764,
    sheetContentHeight = 224
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
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
