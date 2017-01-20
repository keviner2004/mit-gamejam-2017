--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:09edd5f94e60374be9061b7070806ced:aa433c2252de668903199dd7278a63d6:c46243f411ca86fe596665ab352bd775$
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
            x=41,
            y=1,
            width=10,
            height=84,

            sourceX = 128,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=23,
            y=1,
            width=16,
            height=84,

            sourceX = 124,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=1,
            width=20,
            height=84,

            sourceX = 123,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=37,
            y=87,
            width=14,
            height=84,

            sourceX = 125,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=19,
            y=87,
            width=16,
            height=82,

            sourceX = 122,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=87,
            width=16,
            height=84,

            sourceX = 122,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=173,
            width=16,
            height=56,

            sourceX = 123,
            sourceY = 134,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=19,
            y=171,
            width=16,
            height=56,

            sourceX = 124,
            sourceY = 134,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=37,
            y=173,
            width=16,
            height=56,

            sourceX = 123,
            sourceY = 134,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 54,
    sheetContentHeight = 230
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
