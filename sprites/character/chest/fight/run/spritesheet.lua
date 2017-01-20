--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:c5d3b3f21ba750e1eb6608cabbdd857f:3498d896a4bb843d8c8cca956abcbbf1:c46243f411ca86fe596665ab352bd775$
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
            x=63,
            y=1,
            width=58,
            height=88,

            sourceX = 123,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=183,
            y=1,
            width=58,
            height=88,

            sourceX = 123,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=243,
            y=1,
            width=56,
            height=88,

            sourceX = 123,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=699,
            y=1,
            width=50,
            height=84,

            sourceX = 126,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=801,
            y=1,
            width=46,
            height=84,

            sourceX = 132,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=849,
            y=1,
            width=50,
            height=80,

            sourceX = 130,
            sourceY = 102,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=301,
            y=1,
            width=54,
            height=88,

            sourceX = 126,
            sourceY = 99,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=535,
            y=1,
            width=56,
            height=86,

            sourceX = 124,
            sourceY = 101,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=417,
            y=1,
            width=58,
            height=86,

            sourceX = 123,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=123,
            y=1,
            width=58,
            height=88,

            sourceX = 123,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=477,
            y=1,
            width=56,
            height=86,

            sourceX = 124,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=647,
            y=1,
            width=50,
            height=86,

            sourceX = 128,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=751,
            y=1,
            width=48,
            height=84,

            sourceX = 132,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=593,
            y=1,
            width=52,
            height=86,

            sourceX = 127,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=357,
            y=1,
            width=58,
            height=86,

            sourceX = 124,
            sourceY = 102,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=1,
            y=1,
            width=60,
            height=88,

            sourceX = 123,
            sourceY = 102,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=63,
            y=1,
            width=58,
            height=88,

            sourceX = 123,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 900,
    sheetContentHeight = 90
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
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
