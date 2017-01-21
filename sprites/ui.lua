--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:763ecbd0664967752efac00b0ae592af:03816097a7948cc2a1f4a2d97960f5e3:2f9aa7ed53d9dd429372ba2a00184b66$
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
            y=1478,
            width=100,
            height=100,

        },
        {
            -- face/2
            x=103,
            y=1478,
            width=100,
            height=100,

        },
        {
            -- face/3
            x=1,
            y=1580,
            width=100,
            height=100,

        },
        {
            -- face/4
            x=103,
            y=1580,
            width=100,
            height=100,

        },
        {
            -- icon/battery/1
            x=205,
            y=1478,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/battery/2
            x=205,
            y=1495,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/battery/3
            x=205,
            y=1512,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/battery/4
            x=205,
            y=1529,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/battery/5
            x=205,
            y=1546,
            width=30,
            height=15,

            sourceX = 3,
            sourceY = 3,
            sourceWidth = 36,
            sourceHeight = 21
        },
        {
            -- icon/new battery/1
            x=1,
            y=1682,
            width=66,
            height=30,

            sourceX = 18,
            sourceY = 36,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- icon/new battery/2
            x=69,
            y=1682,
            width=66,
            height=28,

            sourceX = 18,
            sourceY = 35,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- icon/new battery/3
            x=69,
            y=1712,
            width=66,
            height=28,

            sourceX = 18,
            sourceY = 38,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- icon/new battery/4
            x=137,
            y=1682,
            width=66,
            height=28,

            sourceX = 18,
            sourceY = 38,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- icon/new battery/5
            x=137,
            y=1712,
            width=66,
            height=28,

            sourceX = 18,
            sourceY = 38,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- mission paper/1
            x=1,
            y=1,
            width=240,
            height=394,

            sourceX = 5,
            sourceY = 9,
            sourceWidth = 250,
            sourceHeight = 412
        },
        {
            -- new face/1
            x=1,
            y=397,
            width=214,
            height=215,

            sourceX = 30,
            sourceY = 12,
            sourceWidth = 276,
            sourceHeight = 243
        },
        {
            -- new face/2
            x=1,
            y=614,
            width=214,
            height=215,

            sourceX = 30,
            sourceY = 12,
            sourceWidth = 276,
            sourceHeight = 243
        },
        {
            -- new face/3
            x=1,
            y=831,
            width=214,
            height=215,

            sourceX = 30,
            sourceY = 12,
            sourceWidth = 276,
            sourceHeight = 243
        },
        {
            -- new face/4
            x=1,
            y=1048,
            width=212,
            height=213,

            sourceX = 32,
            sourceY = 14,
            sourceWidth = 276,
            sourceHeight = 243
        },
        {
            -- new face/5
            x=1,
            y=1263,
            width=212,
            height=213,

            sourceX = 32,
            sourceY = 14,
            sourceWidth = 276,
            sourceHeight = 243
        },
    },
    
    sheetContentWidth = 242,
    sheetContentHeight = 1741
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
    ["icon/new battery/1"] = 10,
    ["icon/new battery/2"] = 11,
    ["icon/new battery/3"] = 12,
    ["icon/new battery/4"] = 13,
    ["icon/new battery/5"] = 14,
    ["mission paper/1"] = 15,
    ["new face/1"] = 16,
    ["new face/2"] = 17,
    ["new face/3"] = 18,
    ["new face/4"] = 19,
    ["new face/5"] = 20,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
