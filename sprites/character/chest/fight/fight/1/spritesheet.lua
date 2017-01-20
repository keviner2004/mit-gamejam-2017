--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:27b53fd021e1408db8f3f2d02aeb8268:514ec42046a7220751ad7665354f8c14:c46243f411ca86fe596665ab352bd775$
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
            x=629,
            y=1,
            width=32,
            height=84,

            sourceX = 134,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=421,
            y=105,
            width=60,
            height=86,

            sourceX = 124,
            sourceY = 113,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=305,
            y=99,
            width=54,
            height=96,

            sourceX = 121,
            sourceY = 120,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=361,
            y=105,
            width=58,
            height=90,

            sourceX = 119,
            sourceY = 114,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=125,
            y=105,
            width=60,
            height=92,

            sourceX = 122,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=99,
            width=72,
            height=98,

            sourceX = 113,
            sourceY = 97,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1,
            width=144,
            height=96,

            sourceX = 77,
            sourceY = 101,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=387,
            y=1,
            width=100,
            height=102,

            sourceX = 98,
            sourceY = 97,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=561,
            y=1,
            width=66,
            height=94,

            sourceX = 115,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=147,
            y=1,
            width=124,
            height=94,

            sourceX = 86,
            sourceY = 98,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=273,
            y=1,
            width=112,
            height=96,

            sourceX = 96,
            sourceY = 98,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=489,
            y=1,
            width=70,
            height=90,

            sourceX = 120,
            sourceY = 100,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=483,
            y=105,
            width=42,
            height=88,

            sourceX = 138,
            sourceY = 100,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=627,
            y=97,
            width=38,
            height=90,

            sourceX = 140,
            sourceY = 100,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=583,
            y=97,
            width=42,
            height=100,

            sourceX = 140,
            sourceY = 92,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=75,
            y=99,
            width=48,
            height=98,

            sourceX = 140,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=527,
            y=97,
            width=54,
            height=100,

            sourceX = 140,
            sourceY = 117,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 18
            x=187,
            y=97,
            width=56,
            height=100,

            sourceX = 140,
            sourceY = 122,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 19
            x=245,
            y=99,
            width=58,
            height=96,

            sourceX = 139,
            sourceY = 126,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 666,
    sheetContentHeight = 198
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
