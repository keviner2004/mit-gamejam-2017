--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:62ea870000b6aabc4700af744684ee77:d7cb1f00fb5898361a4f28ddb1ccd8a0:2f9aa7ed53d9dd429372ba2a00184b66$
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
            -- face/1
            x=1,
            y=1,
            width=100,
            height=100,

        },
        {
            -- face/2
            x=103,
            y=1,
            width=100,
            height=100,

        },
        {
            -- face/3
            x=205,
            y=1,
            width=100,
            height=100,

        },
        {
            -- face/4
            x=307,
            y=1,
            width=100,
            height=100,

        },
        {
            -- icon/battery/1
            x=409,
            y=1,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/battery/2
            x=409,
            y=18,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/battery/3
            x=409,
            y=35,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/battery/4
            x=409,
            y=52,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/battery/5
            x=409,
            y=69,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
    },
    
    sheetContentWidth = 440,
    sheetContentHeight = 102
}

SheetInfo.frameIndex =
{

    ["face/1"] = 1,
    ["face/2"] = 2,
    ["face/3"] = 3,
    ["face/4"] = 4,
    ["icon/battery/1"] = 5,
    ["icon/battery/2"] = 6,
    ["icon/battery/3"] = 7,
    ["icon/battery/4"] = 8,
    ["icon/battery/5"] = 9,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
