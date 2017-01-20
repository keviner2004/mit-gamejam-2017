--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:c078d0750e2774219887d539173faeda:0d9b6cf34758e093bb01b310a6ee7a83:c46243f411ca86fe596665ab352bd775$
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
            y=235,
            width=118,
            height=66,

            sourceX = 76,
            sourceY = 198,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=131,
            y=43,
            width=112,
            height=64,

            sourceX = 77,
            sourceY = 201,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=129,
            y=275,
            width=86,
            height=54,

            sourceX = 91,
            sourceY = 210,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=207,
            y=205,
            width=40,
            height=44,

            sourceX = 120,
            sourceY = 220,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=131,
            y=373,
            width=72,
            height=32,

            sourceX = 106,
            sourceY = 231,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=131,
            y=1,
            width=116,
            height=40,

            sourceX = 85,
            sourceY = 215,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=117,
            y=109,
            width=130,
            height=56,

            sourceX = 81,
            sourceY = 197,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=1,
            width=128,
            height=70,

            sourceX = 76,
            sourceY = 191,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=73,
            width=114,
            height=80,

            sourceX = 79,
            sourceY = 190,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=1,
            y=155,
            width=104,
            height=78,

            sourceX = 82,
            sourceY = 194,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=121,
            y=205,
            width=84,
            height=68,

            sourceX = 92,
            sourceY = 202,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=209,
            y=331,
            width=38,
            height=56,

            sourceX = 122,
            sourceY = 214,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=131,
            y=331,
            width=76,
            height=40,

            sourceX = 105,
            sourceY = 229,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=129,
            y=167,
            width=118,
            height=36,

            sourceX = 83,
            sourceY = 221,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=1,
            y=363,
            width=128,
            height=42,

            sourceX = 81,
            sourceY = 205,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=1,
            y=303,
            width=126,
            height=58,

            sourceX = 76,
            sourceY = 198,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=1,
            y=235,
            width=118,
            height=66,

            sourceX = 76,
            sourceY = 198,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 248,
    sheetContentHeight = 406
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
