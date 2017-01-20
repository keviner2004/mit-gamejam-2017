--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:b3197ece57e00f65d1458f9049bbcbc4:c0c244465f163ea428fcfcb6f53a50cd:c46243f411ca86fe596665ab352bd775$
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
            x=77,
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
            x=89,
            y=1,
            width=18,
            height=82,

            sourceX = 124,
            sourceY = 109,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=159,
            y=1,
            width=32,
            height=80,

            sourceX = 118,
            sourceY = 113,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=123,
            y=1,
            width=34,
            height=80,

            sourceX = 116,
            sourceY = 113,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=193,
            y=1,
            width=32,
            height=80,

            sourceX = 116,
            sourceY = 113,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=109,
            y=1,
            width=12,
            height=82,

            sourceX = 127,
            sourceY = 111,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=53,
            y=1,
            width=22,
            height=84,

            sourceX = 123,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=1,
            width=24,
            height=84,

            sourceX = 121,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=27,
            y=1,
            width=24,
            height=84,

            sourceX = 121,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 226,
    sheetContentHeight = 86
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
