--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:0c2fbbe51118d5e04350aaf70466baa9:d66f27abf0ab16c8aad4d3e3385a7c50:b662a14d2610555021ce54608e0270a6$
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
            -- back/normal/1
            x=217,
            y=1,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- back/photographing/1
            x=1,
            y=80,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- back/self/chapng
            x=23,
            y=80,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- back/walking/1
            x=45,
            y=82,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- back/walking/2
            x=67,
            y=82,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- back/walking/3
            x=1,
            y=1,
            width=20,
            height=77,

            sourceX = 13,
            sourceY = 10,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- back/walking/4
            x=89,
            y=82,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- back/walking/5
            x=45,
            y=1,
            width=20,
            height=79,

            sourceX = 13,
            sourceY = 8,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/normal/1
            x=111,
            y=82,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/photographing/1
            x=133,
            y=82,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/self/1
            x=133,
            y=82,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/self/2
            x=155,
            y=82,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/walking/1
            x=177,
            y=82,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/walking/2
            x=199,
            y=84,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/walking/3
            x=23,
            y=1,
            width=20,
            height=77,

            sourceX = 13,
            sourceY = 10,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/walking/4
            x=221,
            y=84,
            width=20,
            height=81,

            sourceX = 13,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- front/walking/5
            x=67,
            y=1,
            width=20,
            height=79,

            sourceX = 13,
            sourceY = 8,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/normal/1
            x=79,
            y=165,
            width=22,
            height=83,

            sourceX = 12,
            sourceY = 4,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/photographing/1
            x=89,
            y=1,
            width=24,
            height=79,

            sourceX = 10,
            sourceY = 8,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/photographing/2
            x=115,
            y=1,
            width=24,
            height=79,

            sourceX = 10,
            sourceY = 8,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/self/1
            x=89,
            y=1,
            width=24,
            height=79,

            sourceX = 10,
            sourceY = 8,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/self/2
            x=141,
            y=1,
            width=30,
            height=79,

            sourceX = 4,
            sourceY = 8,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/walking/1
            x=103,
            y=165,
            width=22,
            height=83,

            sourceX = 12,
            sourceY = 4,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/walking/2
            x=127,
            y=165,
            width=28,
            height=83,

            sourceX = 12,
            sourceY = 4,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/walking/3
            x=33,
            y=165,
            width=44,
            height=81,

            sourceX = 2,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/walking/4
            x=1,
            y=163,
            width=30,
            height=81,

            sourceX = 11,
            sourceY = 6,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/walking/5
            x=157,
            y=165,
            width=24,
            height=83,

            sourceX = 12,
            sourceY = 4,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/walking/6
            x=183,
            y=167,
            width=24,
            height=83,

            sourceX = 12,
            sourceY = 4,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/walking/7
            x=173,
            y=1,
            width=42,
            height=79,

            sourceX = 2,
            sourceY = 8,
            sourceWidth = 50,
            sourceHeight = 87
        },
        {
            -- horizon/walking/8
            x=209,
            y=167,
            width=26,
            height=83,

            sourceX = 12,
            sourceY = 4,
            sourceWidth = 50,
            sourceHeight = 87
        },
    },
    
    sheetContentWidth = 242,
    sheetContentHeight = 251
}

SheetInfo.frameIndex =
{

    ["back/normal/1"] = 1,
    ["back/photographing/1"] = 2,
    ["back/self/chapng"] = 3,
    ["back/walking/1"] = 4,
    ["back/walking/2"] = 5,
    ["back/walking/3"] = 6,
    ["back/walking/4"] = 7,
    ["back/walking/5"] = 8,
    ["front/normal/1"] = 9,
    ["front/photographing/1"] = 10,
    ["front/self/1"] = 11,
    ["front/self/2"] = 12,
    ["front/walking/1"] = 13,
    ["front/walking/2"] = 14,
    ["front/walking/3"] = 15,
    ["front/walking/4"] = 16,
    ["front/walking/5"] = 17,
    ["horizon/normal/1"] = 18,
    ["horizon/photographing/1"] = 19,
    ["horizon/photographing/2"] = 20,
    ["horizon/self/1"] = 21,
    ["horizon/self/2"] = 22,
    ["horizon/walking/1"] = 23,
    ["horizon/walking/2"] = 24,
    ["horizon/walking/3"] = 25,
    ["horizon/walking/4"] = 26,
    ["horizon/walking/5"] = 27,
    ["horizon/walking/6"] = 28,
    ["horizon/walking/7"] = 29,
    ["horizon/walking/8"] = 30,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
