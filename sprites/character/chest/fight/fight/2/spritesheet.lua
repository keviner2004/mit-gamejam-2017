--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:a5ade23bcdeeb951f83ae791d270591d:b26bdbf54ffbfc7ec9f4be062be68b9e:c46243f411ca86fe596665ab352bd775$
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
            width=60,
            height=88,

            sourceX = 129,
            sourceY = 102,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=1,
            width=60,
            height=88,

            sourceX = 129,
            sourceY = 102,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 62,
    sheetContentHeight = 90
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
