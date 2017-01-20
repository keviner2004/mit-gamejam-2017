--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:8c4287e20d9c6da50f0814bc5eaff0db:9e7cbc356535180c7c57e3b8f5da8eed:c46243f411ca86fe596665ab352bd775$
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
            y=199,
            width=40,
            height=26,

            sourceX = 128,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=175,
            width=44,
            height=22,

            sourceX = 124,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=149,
            width=48,
            height=24,

            sourceX = 120,
            sourceY = 240,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=125,
            width=50,
            height=22,

            sourceX = 118,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=1,
            width=52,
            height=26,

            sourceX = 116,
            sourceY = 244,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=29,
            width=52,
            height=22,

            sourceX = 116,
            sourceY = 248,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=53,
            width=52,
            height=22,

            sourceX = 116,
            sourceY = 248,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=77,
            width=52,
            height=22,

            sourceX = 116,
            sourceY = 248,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=101,
            width=52,
            height=22,

            sourceX = 116,
            sourceY = 248,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 54,
    sheetContentHeight = 226
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
