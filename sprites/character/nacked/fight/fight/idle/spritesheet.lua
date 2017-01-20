--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:b9f07bdeb630c6dcc73f56de02554f0b:d8f57b6d46b7d53ca7d70fe01a0a2ef3:c46243f411ca86fe596665ab352bd775$
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
            width=144,
            height=204,

            sourceX = 71,
            sourceY = 64,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=413,
            width=144,
            height=204,

            sourceX = 71,
            sourceY = 64,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=619,
            width=144,
            height=202,

            sourceX = 71,
            sourceY = 66,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=823,
            width=144,
            height=202,

            sourceX = 71,
            sourceY = 66,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=1027,
            width=144,
            height=202,

            sourceX = 71,
            sourceY = 66,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=1231,
            width=144,
            height=202,

            sourceX = 71,
            sourceY = 66,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1435,
            width=144,
            height=202,

            sourceX = 71,
            sourceY = 66,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=1639,
            width=144,
            height=202,

            sourceX = 71,
            sourceY = 66,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=1843,
            width=144,
            height=202,

            sourceX = 71,
            sourceY = 66,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=1,
            y=207,
            width=144,
            height=204,

            sourceX = 71,
            sourceY = 64,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=1,
            y=1,
            width=144,
            height=204,

            sourceX = 71,
            sourceY = 64,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 146,
    sheetContentHeight = 2046
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
