--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:90d2212121a1c266eef87145481f3cab:ff1097bb1eba60d5714e34d5c636723e:c46243f411ca86fe596665ab352bd775$
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
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=123,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=245,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=367,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=489,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=611,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=489,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=367,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=245,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=123,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=1,
            y=1,
            width=120,
            height=30,

            sourceX = 92,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 732,
    sheetContentHeight = 32
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
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
