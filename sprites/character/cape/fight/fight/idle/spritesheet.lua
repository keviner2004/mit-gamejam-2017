--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:562a2ae303dc6f1ae0e5a1874c962c9a:65dba8473e92a2a2530ea29364d141ea:c46243f411ca86fe596665ab352bd775$
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
            x=11,
            y=83,
            width=8,
            height=78,

            sourceX = 175,
            sourceY = 125,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=21,
            y=1,
            width=8,
            height=78,

            sourceX = 175,
            sourceY = 125,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=1,
            y=1,
            width=8,
            height=80,

            sourceX = 175,
            sourceY = 124,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=1,
            y=83,
            width=8,
            height=80,

            sourceX = 175,
            sourceY = 125,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=21,
            y=81,
            width=8,
            height=78,

            sourceX = 175,
            sourceY = 127,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=21,
            y=161,
            width=8,
            height=78,

            sourceX = 175,
            sourceY = 127,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=21,
            y=81,
            width=8,
            height=78,

            sourceX = 175,
            sourceY = 127,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=11,
            y=1,
            width=8,
            height=80,

            sourceX = 175,
            sourceY = 125,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=1,
            y=1,
            width=8,
            height=80,

            sourceX = 175,
            sourceY = 124,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=21,
            y=1,
            width=8,
            height=78,

            sourceX = 175,
            sourceY = 125,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=11,
            y=83,
            width=8,
            height=78,

            sourceX = 175,
            sourceY = 125,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 30,
    sheetContentHeight = 240
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
