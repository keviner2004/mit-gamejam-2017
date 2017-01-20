--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:9a602d382fb3c2e3ec9a1c92eb103ac6:20802491335743554f53eff69f335b69:c46243f411ca86fe596665ab352bd775$
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
            width=88,
            height=218,

            sourceX = 122,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=1,
            width=88,
            height=218,

            sourceX = 122,
            sourceY = 46,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 90,
    sheetContentHeight = 220
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
