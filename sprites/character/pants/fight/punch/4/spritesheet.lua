--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:7e31c1721a00d4cd9b3826e8f81c8e91:25af3bc119b78cec2642fd035f60f102:c46243f411ca86fe596665ab352bd775$
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
            x=329,
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
            x=169,
            y=1,
            width=38,
            height=84,

            sourceX = 130,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=209,
            y=1,
            width=38,
            height=84,

            sourceX = 131,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=249,
            y=1,
            width=38,
            height=84,

            sourceX = 131,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=289,
            y=1,
            width=38,
            height=84,

            sourceX = 131,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=1,
            width=40,
            height=84,

            sourceX = 130,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=43,
            y=1,
            width=40,
            height=84,

            sourceX = 130,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=85,
            y=1,
            width=40,
            height=84,

            sourceX = 130,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=127,
            y=1,
            width=40,
            height=84,

            sourceX = 130,
            sourceY = 180,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 366,
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
