--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:670f66e4ff65ec3db90f92c23fa00971:4e2232f16db66cd3e2307efae02639bb:c46243f411ca86fe596665ab352bd775$
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
            x=95,
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
            x=503,
            y=1,
            width=90,
            height=216,

            sourceX = 110,
            sourceY = 43,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=381,
            y=1,
            width=120,
            height=216,

            sourceX = 91,
            sourceY = 42,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=155,
            y=1,
            width=112,
            height=218,

            sourceX = 85,
            sourceY = 41,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=1,
            width=92,
            height=222,

            sourceX = 85,
            sourceY = 41,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=269,
            y=1,
            width=110,
            height=218,

            sourceX = 107,
            sourceY = 45,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=595,
            y=1,
            width=100,
            height=214,

            sourceX = 120,
            sourceY = 49,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=697,
            y=1,
            width=98,
            height=214,

            sourceX = 121,
            sourceY = 49,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=797,
            y=1,
            width=98,
            height=214,

            sourceX = 121,
            sourceY = 49,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 896,
    sheetContentHeight = 224
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
