--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:100c64ec0a2590a98da9e95fce156d7f:e909a15f7a945337294b299437d39124:c46243f411ca86fe596665ab352bd775$
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
            y=1,
            width=58,
            height=220,

            sourceX = 123,
            sourceY = 44,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=61,
            y=1,
            width=96,
            height=218,

            sourceX = 121,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=493,
            y=1,
            width=78,
            height=218,

            sourceX = 116,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=653,
            y=1,
            width=70,
            height=218,

            sourceX = 121,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=159,
            y=1,
            width=84,
            height=218,

            sourceX = 121,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=329,
            y=1,
            width=80,
            height=218,

            sourceX = 123,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=573,
            y=1,
            width=78,
            height=218,

            sourceX = 120,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=411,
            y=1,
            width=80,
            height=218,

            sourceX = 120,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=245,
            y=1,
            width=82,
            height=218,

            sourceX = 119,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 724,
    sheetContentHeight = 222
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
