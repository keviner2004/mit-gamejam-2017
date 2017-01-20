--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:4976d5fef8aafbb3442b057fb6d3c2a9:1852c7b62997e8d43b0c6b171a5dfe6f:c46243f411ca86fe596665ab352bd775$
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
            x=219,
            y=1,
            width=30,
            height=84,

            sourceX = 135,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=103,
            width=50,
            height=86,

            sourceX = 125,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=107,
            y=1,
            width=52,
            height=92,

            sourceX = 121,
            sourceY = 97,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=49,
            y=1,
            width=56,
            height=96,

            sourceX = 116,
            sourceY = 94,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=1,
            width=46,
            height=100,

            sourceX = 120,
            sourceY = 90,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=53,
            y=99,
            width=56,
            height=90,

            sourceX = 126,
            sourceY = 102,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=111,
            y=95,
            width=58,
            height=88,

            sourceX = 131,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=161,
            y=1,
            width=56,
            height=88,

            sourceX = 132,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=171,
            y=91,
            width=56,
            height=88,

            sourceX = 132,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 250,
    sheetContentHeight = 190
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
