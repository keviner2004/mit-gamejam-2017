--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:6833d269ef899fea09d4463af3371742:549ba9a18e55c54c25f42b1a95b45f42:c46243f411ca86fe596665ab352bd775$
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
            x=459,
            y=155,
            width=52,
            height=68,

            sourceX = 134,
            sourceY = 184,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=341,
            y=167,
            width=62,
            height=74,

            sourceX = 127,
            sourceY = 185,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=195,
            y=181,
            width=78,
            height=66,

            sourceX = 117,
            sourceY = 195,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=263,
            y=83,
            width=66,
            height=84,

            sourceX = 134,
            sourceY = 175,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=101,
            width=110,
            height=88,

            sourceX = 125,
            sourceY = 169,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=115,
            y=1,
            width=90,
            height=96,

            sourceX = 120,
            sourceY = 162,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=207,
            y=1,
            width=70,
            height=80,

            sourceX = 106,
            sourceY = 179,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=395,
            y=55,
            width=68,
            height=98,

            sourceX = 90,
            sourceY = 164,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=1,
            width=112,
            height=98,

            sourceX = 64,
            sourceY = 167,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=331,
            y=77,
            width=62,
            height=88,

            sourceX = 117,
            sourceY = 173,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=275,
            y=169,
            width=64,
            height=84,

            sourceX = 129,
            sourceY = 175,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=279,
            y=1,
            width=68,
            height=74,

            sourceX = 131,
            sourceY = 170,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=113,
            y=101,
            width=74,
            height=82,

            sourceX = 113,
            sourceY = 174,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=465,
            y=1,
            width=70,
            height=112,

            sourceX = 117,
            sourceY = 170,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=405,
            y=155,
            width=52,
            height=96,

            sourceX = 138,
            sourceY = 168,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=189,
            y=99,
            width=72,
            height=80,

            sourceX = 123,
            sourceY = 184,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=1,
            y=191,
            width=94,
            height=64,

            sourceX = 110,
            sourceY = 200,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 18
            x=97,
            y=191,
            width=96,
            height=60,

            sourceX = 110,
            sourceY = 204,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 19
            x=349,
            y=1,
            width=94,
            height=52,

            sourceX = 112,
            sourceY = 212,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 536,
    sheetContentHeight = 256
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
    ["12"] = 12,
    ["13"] = 13,
    ["14"] = 14,
    ["15"] = 15,
    ["16"] = 16,
    ["17"] = 17,
    ["18"] = 18,
    ["19"] = 19,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
