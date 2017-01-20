--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:0eccfe02db012096906103e5d4f93f2f:5acfc01c734e856393e61a81a78f524e:c46243f411ca86fe596665ab352bd775$
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
            x=47,
            y=341,
            width=12,
            height=84,

            sourceX = 127,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=43,
            y=427,
            width=16,
            height=18,

            sourceX = 133,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=401,
            width=40,
            height=28,

            sourceX = 95,
            sourceY = 134,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=285,
            width=54,
            height=54,

            sourceX = 103,
            sourceY = 117,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=341,
            width=44,
            height=58,

            sourceX = 114,
            sourceY = 121,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=143,
            width=54,
            height=68,

            sourceX = 124,
            sourceY = 111,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=1,
            width=56,
            height=68,

            sourceX = 128,
            sourceY = 112,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=71,
            width=54,
            height=70,

            sourceX = 129,
            sourceY = 110,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=213,
            width=52,
            height=70,

            sourceX = 130,
            sourceY = 111,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 60,
    sheetContentHeight = 446
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
