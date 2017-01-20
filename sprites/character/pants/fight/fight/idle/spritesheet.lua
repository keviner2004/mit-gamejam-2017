--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:9557fc87dca005687d1c2713dcd43538:2cfa859f363eb56779271aab76aebf76:c46243f411ca86fe596665ab352bd775$
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
            width=116,
            height=78,

            sourceX = 90,
            sourceY = 190,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=1,
            y=161,
            width=116,
            height=78,

            sourceX = 90,
            sourceY = 190,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=241,
            width=116,
            height=78,

            sourceX = 90,
            sourceY = 190,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=321,
            width=116,
            height=76,

            sourceX = 90,
            sourceY = 192,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=1,
            y=399,
            width=116,
            height=76,

            sourceX = 90,
            sourceY = 192,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=1,
            y=477,
            width=116,
            height=76,

            sourceX = 90,
            sourceY = 192,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=555,
            width=116,
            height=76,

            sourceX = 90,
            sourceY = 192,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=1,
            y=633,
            width=116,
            height=76,

            sourceX = 90,
            sourceY = 192,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=241,
            width=116,
            height=78,

            sourceX = 90,
            sourceY = 190,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=1,
            y=81,
            width=116,
            height=78,

            sourceX = 90,
            sourceY = 190,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=1,
            y=1,
            width=116,
            height=78,

            sourceX = 90,
            sourceY = 190,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 118,
    sheetContentHeight = 710
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
