--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f83d4aabdce2f8075cf8b5968a48167a:82a5e868784e35fa390ba05ad6b9e570:c46243f411ca86fe596665ab352bd775$
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
            y=769,
            width=112,
            height=92,

            sourceX = 103,
            sourceY = 115,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=97,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 113,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=193,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 114,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=289,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 115,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=385,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 115,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=481,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 115,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=385,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 115,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=577,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 115,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=673,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 114,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=1,
            y=1,
            width=114,
            height=94,

            sourceX = 101,
            sourceY = 113,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=1,
            y=769,
            width=112,
            height=92,

            sourceX = 103,
            sourceY = 115,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 116,
    sheetContentHeight = 862
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
    ["10"] = 10,
    ["11"] = 11,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
