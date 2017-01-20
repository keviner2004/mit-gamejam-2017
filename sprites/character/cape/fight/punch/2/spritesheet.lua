--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:736fa45a31ae1d8690849d59d59eb9a3:08e9923b2ce716330561e5e418dd1225:c46243f411ca86fe596665ab352bd775$
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
            x=97,
            y=1,
            width=22,
            height=82,

            sourceX = 105,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=121,
            y=1,
            width=20,
            height=82,

            sourceX = 107,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=143,
            y=1,
            width=20,
            height=82,

            sourceX = 112,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=71,
            y=1,
            width=24,
            height=82,

            sourceX = 113,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=165,
            y=1,
            width=28,
            height=78,

            sourceX = 111,
            sourceY = 109,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=37,
            y=1,
            width=32,
            height=82,

            sourceX = 110,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1,
            width=34,
            height=82,

            sourceX = 109,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 194,
    sheetContentHeight = 84
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
