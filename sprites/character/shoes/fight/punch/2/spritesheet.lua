--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:8d308f69bdbf2645d1f21bde00b34726:b14a3d1dd4e34cfdee059fa73d1aa7c9:c46243f411ca86fe596665ab352bd775$
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
            width=48,
            height=26,

            sourceX = 118,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=51,
            y=1,
            width=48,
            height=26,

            sourceX = 118,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=101,
            y=1,
            width=48,
            height=26,

            sourceX = 118,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=151,
            y=1,
            width=48,
            height=26,

            sourceX = 118,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=201,
            y=1,
            width=48,
            height=26,

            sourceX = 118,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=201,
            y=1,
            width=48,
            height=26,

            sourceX = 118,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=251,
            y=1,
            width=48,
            height=26,

            sourceX = 118,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 300,
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
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
