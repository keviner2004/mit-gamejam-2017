--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:4e00127d67865aedbc231f6a6b2da732:817b8c2301a2f886b7842f22648e2a95:c46243f411ca86fe596665ab352bd775$
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
            y=91,
            width=60,
            height=44,

            sourceX = 133,
            sourceY = 226,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=63,
            y=91,
            width=34,
            height=36,

            sourceX = 139,
            sourceY = 233,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=223,
            width=68,
            height=28,

            sourceX = 116,
            sourceY = 240,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=193,
            width=78,
            height=28,

            sourceX = 115,
            sourceY = 241,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=165,
            width=90,
            height=26,

            sourceX = 113,
            sourceY = 243,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=137,
            width=98,
            height=26,

            sourceX = 113,
            sourceY = 243,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1,
            width=100,
            height=28,

            sourceX = 114,
            sourceY = 242,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=31,
            width=100,
            height=28,

            sourceX = 114,
            sourceY = 242,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=61,
            width=100,
            height=28,

            sourceX = 114,
            sourceY = 242,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 102,
    sheetContentHeight = 252
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
