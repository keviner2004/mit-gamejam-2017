--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:8aeee840a3a1bcf9e218080ebbe6e98a:f6ee31df7843ff5d5bd645fa279a2a2f:c46243f411ca86fe596665ab352bd775$
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
            height=28,

            sourceX = 130,
            sourceY = 242,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=1,
            width=40,
            height=28,

            sourceX = 130,
            sourceY = 242,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 42,
    sheetContentHeight = 30
}

SheetInfo.frameIndex =
{

    ["1"] = 1,
    ["2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
