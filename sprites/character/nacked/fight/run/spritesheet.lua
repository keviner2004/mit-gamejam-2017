--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:6ae98d1edc2a131318dc746274369b3b:2b9023d043ec8571849a63452f2f99ca:c46243f411ca86fe596665ab352bd775$
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
            x=917,
            y=1,
            width=130,
            height=206,

            sourceX = 83,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=787,
            y=1,
            width=128,
            height=208,

            sourceX = 84,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=519,
            y=1,
            width=108,
            height=210,

            sourceX = 98,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=709,
            y=1,
            width=76,
            height=210,

            sourceX = 120,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=629,
            y=1,
            width=78,
            height=210,

            sourceX = 111,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1283,
            y=1,
            width=102,
            height=204,

            sourceX = 96,
            sourceY = 45,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1517,
            y=1,
            width=120,
            height=200,

            sourceX = 87,
            sourceY = 45,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1049,
            y=1,
            width=126,
            height=206,

            sourceX = 84,
            sourceY = 45,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=391,
            y=1,
            width=126,
            height=212,

            sourceX = 85,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=1,
            y=1,
            width=122,
            height=216,

            sourceX = 89,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=125,
            y=1,
            width=110,
            height=216,

            sourceX = 98,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=317,
            y=1,
            width=72,
            height=216,

            sourceX = 126,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=237,
            y=1,
            width=78,
            height=216,

            sourceX = 111,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=1177,
            y=1,
            width=104,
            height=206,

            sourceX = 96,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=1639,
            y=1,
            width=120,
            height=194,

            sourceX = 88,
            sourceY = 44,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=1387,
            y=1,
            width=128,
            height=200,

            sourceX = 84,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=917,
            y=1,
            width=130,
            height=206,

            sourceX = 83,
            sourceY = 47,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 1760,
    sheetContentHeight = 218
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
