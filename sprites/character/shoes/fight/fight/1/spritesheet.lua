--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:caeefcc5f1aeac14bf565ff97c2f967e:76c38b3dd49c4efd9807c426dc154530:c46243f411ca86fe596665ab352bd775$
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
            x=213,
            y=245,
            width=36,
            height=30,

            sourceX = 134,
            sourceY = 235,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=213,
            y=203,
            width=42,
            height=40,

            sourceX = 124,
            sourceY = 225,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=73,
            y=217,
            width=52,
            height=54,

            sourceX = 114,
            sourceY = 211,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=323,
            width=70,
            height=78,

            sourceX = 129,
            sourceY = 187,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=127,
            y=1,
            width=124,
            height=94,

            sourceX = 119,
            sourceY = 171,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=127,
            y=97,
            width=108,
            height=104,

            sourceX = 115,
            sourceY = 162,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=211,
            width=70,
            height=110,

            sourceX = 111,
            sourceY = 158,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=103,
            width=78,
            height=106,

            sourceX = 85,
            sourceY = 163,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=1,
            width=124,
            height=100,

            sourceX = 57,
            sourceY = 170,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=127,
            y=203,
            width=84,
            height=86,

            sourceX = 96,
            sourceY = 181,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=81,
            y=103,
            width=44,
            height=66,

            sourceX = 141,
            sourceY = 199,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=165,
            y=361,
            width=68,
            height=38,

            sourceX = 121,
            sourceY = 216,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=73,
            y=291,
            width=90,
            height=74,

            sourceX = 99,
            sourceY = 191,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=165,
            y=291,
            width=80,
            height=68,

            sourceX = 113,
            sourceY = 214,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=81,
            y=171,
            width=44,
            height=44,

            sourceX = 132,
            sourceY = 226,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=1,
            y=403,
            width=62,
            height=34,

            sourceX = 118,
            sourceY = 237,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=159,
            y=401,
            width=80,
            height=28,

            sourceX = 105,
            sourceY = 243,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 18
            x=73,
            y=367,
            width=84,
            height=28,

            sourceX = 105,
            sourceY = 243,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 19
            x=73,
            y=397,
            width=84,
            height=28,

            sourceX = 106,
            sourceY = 243,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 256,
    sheetContentHeight = 438
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
