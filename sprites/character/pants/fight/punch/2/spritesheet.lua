--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:c8b3c2ebfe17665ecac024756c83ddaa:a7549486db2cb11d7c11677b6b22fe2b:c46243f411ca86fe596665ab352bd775$
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
            width=44,
            height=90,

            sourceX = 120,
            sourceY = 174,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=539,
            width=42,
            height=88,

            sourceX = 122,
            sourceY = 176,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=93,
            width=44,
            height=90,

            sourceX = 121,
            sourceY = 174,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=185,
            width=44,
            height=88,

            sourceX = 121,
            sourceY = 176,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=275,
            width=44,
            height=86,

            sourceX = 121,
            sourceY = 178,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=363,
            width=44,
            height=86,

            sourceX = 121,
            sourceY = 178,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=451,
            width=44,
            height=86,

            sourceX = 121,
            sourceY = 178,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 46,
    sheetContentHeight = 628
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
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
