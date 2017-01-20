--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:18784a2fb140f19339b32f5870581c6f:e94e0f550cca8e5ecaa8fafdd930e64b:c46243f411ca86fe596665ab352bd775$
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
            x=293,
            y=1,
            width=36,
            height=84,

            sourceX = 131,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=433,
            y=1,
            width=44,
            height=82,

            sourceX = 129,
            sourceY = 177,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=331,
            y=1,
            width=52,
            height=82,

            sourceX = 123,
            sourceY = 176,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=385,
            y=1,
            width=46,
            height=82,

            sourceX = 121,
            sourceY = 177,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=119,
            y=1,
            width=48,
            height=86,

            sourceX = 119,
            sourceY = 177,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=63,
            y=1,
            width=54,
            height=86,

            sourceX = 120,
            sourceY = 177,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1,
            width=60,
            height=86,

            sourceX = 120,
            sourceY = 177,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=169,
            y=1,
            width=60,
            height=84,

            sourceX = 120,
            sourceY = 179,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=231,
            y=1,
            width=60,
            height=84,

            sourceX = 121,
            sourceY = 179,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 478,
    sheetContentHeight = 88
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
