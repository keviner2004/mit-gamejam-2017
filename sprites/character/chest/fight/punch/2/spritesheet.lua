--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:4f18990c16acb0bd027fe2b6a8077af3:f943a64aed0b371a6938e02c0fa3b5c0:c46243f411ca86fe596665ab352bd775$
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
            x=159,
            y=1,
            width=74,
            height=88,

            sourceX = 100,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=409,
            y=1,
            width=58,
            height=84,

            sourceX = 111,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=365,
            y=1,
            width=42,
            height=86,

            sourceX = 122,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=305,
            y=1,
            width=58,
            height=86,

            sourceX = 115,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=235,
            y=1,
            width=68,
            height=88,

            sourceX = 114,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=81,
            y=1,
            width=76,
            height=90,

            sourceX = 111,
            sourceY = 101,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1,
            width=78,
            height=90,

            sourceX = 111,
            sourceY = 101,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 468,
    sheetContentHeight = 92
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
