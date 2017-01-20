--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:72b9e3deb26086a4b70d28fb7e19b407:5ebb842ea2862f5bb3ec77c875d6321b:c46243f411ca86fe596665ab352bd775$
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
            y=93,
            width=60,
            height=86,

            sourceX = 136,
            sourceY = 178,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=197,
            y=1,
            width=48,
            height=90,

            sourceX = 135,
            sourceY = 173,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=169,
            y=175,
            width=66,
            height=80,

            sourceX = 120,
            sourceY = 181,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=181,
            width=74,
            height=78,

            sourceX = 119,
            sourceY = 184,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=159,
            y=93,
            width=84,
            height=80,

            sourceX = 118,
            sourceY = 182,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=77,
            y=175,
            width=90,
            height=80,

            sourceX = 119,
            sourceY = 183,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1,
            width=96,
            height=80,

            sourceX = 117,
            sourceY = 183,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=99,
            y=1,
            width=96,
            height=80,

            sourceX = 117,
            sourceY = 183,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=63,
            y=93,
            width=94,
            height=80,

            sourceX = 118,
            sourceY = 183,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 246,
    sheetContentHeight = 260
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
