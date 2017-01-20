--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:86f76d3b40937eeb3c0037904b614c44:414d9ebe1e3da3738838fcc7691b1ac3:c46243f411ca86fe596665ab352bd775$
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
            x=23,
            y=319,
            width=12,
            height=84,

            sourceX = 127,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=111,
            y=267,
            width=14,
            height=30,

            sourceX = 129,
            sourceY = 111,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=63,
            y=271,
            width=36,
            height=86,

            sourceX = 112,
            sourceY = 120,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=93,
            y=383,
            width=28,
            height=88,

            sourceX = 116,
            sourceY = 111,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=319,
            width=20,
            height=88,

            sourceX = 121,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=75,
            y=1,
            width=52,
            height=90,

            sourceX = 108,
            sourceY = 100,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=143,
            width=60,
            height=84,

            sourceX = 121,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=67,
            y=93,
            width=60,
            height=90,

            sourceX = 134,
            sourceY = 101,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=39,
            y=317,
            width=22,
            height=82,

            sourceX = 159,
            sourceY = 109,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=111,
            y=185,
            width=14,
            height=80,

            sourceX = 174,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=1,
            y=409,
            width=18,
            height=80,

            sourceX = 110,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=101,
            y=299,
            width=24,
            height=82,

            sourceX = 115,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=37,
            y=401,
            width=20,
            height=84,

            sourceX = 126,
            sourceY = 101,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=39,
            y=229,
            width=22,
            height=86,

            sourceX = 126,
            sourceY = 98,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=63,
            y=359,
            width=28,
            height=90,

            sourceX = 124,
            sourceY = 93,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=1,
            y=229,
            width=36,
            height=88,

            sourceX = 121,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=63,
            y=185,
            width=46,
            height=84,

            sourceX = 117,
            sourceY = 118,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 18
            x=1,
            y=67,
            width=64,
            height=74,

            sourceX = 109,
            sourceY = 123,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 19
            x=1,
            y=1,
            width=72,
            height=64,

            sourceX = 106,
            sourceY = 126,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 128,
    sheetContentHeight = 490
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
