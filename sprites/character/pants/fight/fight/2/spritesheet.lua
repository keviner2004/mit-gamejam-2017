--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:d35d3c0ce4fc442abccd3c5f4f86fe9a:b1488c7805223c854f6cc7ee157f7541:c46243f411ca86fe596665ab352bd775$
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
            height=86,

            sourceX = 133,
            sourceY = 178,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=1,
            width=40,
            height=86,

            sourceX = 133,
            sourceY = 178,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 42,
    sheetContentHeight = 88
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
