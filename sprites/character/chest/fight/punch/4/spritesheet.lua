--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:fa3c1a76f944ed792392bb741c121a3d:14777b6d2a9e6c26dd723f436ae3b133:c46243f411ca86fe596665ab352bd775$
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
            x=117,
            y=89,
            width=30,
            height=84,

            sourceX = 135,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=1,
            width=56,
            height=90,

            sourceX = 130,
            sourceY = 99,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=59,
            y=1,
            width=60,
            height=86,

            sourceX = 125,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=59,
            y=89,
            width=56,
            height=84,

            sourceX = 130,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=149,
            y=87,
            width=50,
            height=84,

            sourceX = 131,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=201,
            y=87,
            width=50,
            height=84,

            sourceX = 125,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=93,
            width=56,
            height=82,

            sourceX = 124,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=121,
            y=1,
            width=60,
            height=84,

            sourceX = 121,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=183,
            y=1,
            width=60,
            height=84,

            sourceX = 122,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 252,
    sheetContentHeight = 176
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
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
