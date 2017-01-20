--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:fb3c95b524867f6a85561bb8cbc3b18b:f7ba3c217eed2ffe374b86ed98e3ed68:c46243f411ca86fe596665ab352bd775$
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
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=43,
            y=1,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=85,
            y=1,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=127,
            y=1,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=169,
            y=1,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=211,
            y=1,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=253,
            y=1,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=295,
            y=1,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=337,
            y=1,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 378,
    sheetContentHeight = 28
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
