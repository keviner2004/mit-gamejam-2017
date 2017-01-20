--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:790b5a147a424f429cca3d5a18f64080:f4e1147198eaadadb6790e70c239289c:c46243f411ca86fe596665ab352bd775$
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
            x=175,
            y=1789,
            width=62,
            height=208,

            sourceX = 124,
            sourceY = 44,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=143,
            y=635,
            width=98,
            height=206,

            sourceX = 115,
            sourceY = 53,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=123,
            y=857,
            width=124,
            height=190,

            sourceX = 93,
            sourceY = 71,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=85,
            y=1415,
            width=130,
            height=202,

            sourceX = 91,
            sourceY = 57,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=645,
            width=140,
            height=210,

            sourceX = 95,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=141,
            y=213,
            width=100,
            height=210,

            sourceX = 113,
            sourceY = 48,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1,
            width=218,
            height=210,

            sourceX = 40,
            sourceY = 49,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=857,
            width=120,
            height=214,

            sourceX = 78,
            sourceY = 48,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=213,
            width=138,
            height=216,

            sourceX = 64,
            sourceY = 49,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=1,
            y=431,
            width=138,
            height=212,

            sourceX = 79,
            sourceY = 49,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=1,
            y=1073,
            width=112,
            height=212,

            sourceX = 96,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=89,
            y=1789,
            width=84,
            height=198,

            sourceX = 120,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=1,
            y=1757,
            width=86,
            height=214,

            sourceX = 114,
            sourceY = 42,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=1,
            y=1287,
            width=82,
            height=242,

            sourceX = 118,
            sourceY = 40,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=1,
            y=1531,
            width=82,
            height=224,

            sourceX = 138,
            sourceY = 40,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=141,
            y=425,
            width=104,
            height=208,

            sourceX = 123,
            sourceY = 56,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=123,
            y=1049,
            width=124,
            height=188,

            sourceX = 110,
            sourceY = 76,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 18
            x=115,
            y=1239,
            width=132,
            height=174,

            sourceX = 110,
            sourceY = 90,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 19
            x=89,
            y=1619,
            width=134,
            height=168,

            sourceX = 111,
            sourceY = 96,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 248,
    sheetContentHeight = 1998
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
