--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:ad5db8afb11e613b98a50f968999d19c:f2ae1a8d32d04d070892202ceaaaf6c5:c46243f411ca86fe596665ab352bd775$
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
            y=175,
            width=108,
            height=76,

            sourceX = 83,
            sourceY = 177,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=241,
            y=71,
            width=102,
            height=76,

            sourceX = 85,
            sourceY = 179,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=339,
            y=155,
            width=80,
            height=78,

            sourceX = 99,
            sourceY = 179,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=481,
            y=1,
            width=50,
            height=78,

            sourceX = 130,
            sourceY = 179,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=261,
            y=149,
            width=76,
            height=84,

            sourceX = 112,
            sourceY = 173,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=345,
            y=77,
            width=102,
            height=76,

            sourceX = 96,
            sourceY = 173,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=119,
            y=1,
            width=120,
            height=72,

            sourceX = 87,
            sourceY = 173,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=1,
            width=116,
            height=82,

            sourceX = 84,
            sourceY = 169,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=85,
            width=104,
            height=88,

            sourceX = 85,
            sourceY = 171,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=111,
            y=153,
            width=94,
            height=90,

            sourceX = 89,
            sourceY = 173,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=449,
            y=81,
            width=80,
            height=82,

            sourceX = 98,
            sourceY = 181,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=207,
            y=153,
            width=52,
            height=86,

            sourceX = 129,
            sourceY = 177,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=421,
            y=165,
            width=78,
            height=80,

            sourceX = 111,
            sourceY = 182,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=119,
            y=75,
            width=104,
            height=76,

            sourceX = 95,
            sourceY = 176,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=241,
            y=1,
            width=120,
            height=68,

            sourceX = 87,
            sourceY = 170,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=363,
            y=1,
            width=116,
            height=74,

            sourceX = 83,
            sourceY = 172,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=1,
            y=175,
            width=108,
            height=76,

            sourceX = 83,
            sourceY = 177,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 532,
    sheetContentHeight = 252
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
