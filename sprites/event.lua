--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:752e02f7fb35ac130863ec9ebfbd03a8:07696b90fed4156572ac18db5337a749:e2b3a3285a5b1e0d4bc5aaf3e6c348d0$
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
            -- punch card
            x=1,
            y=1,
            width=44,
            height=76,

            sourceX = 33,
            sourceY = 12,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- wifi waves/1/1
            x=166,
            y=51,
            width=31,
            height=14,

            sourceX = 84,
            sourceY = 2,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/1/2
            x=100,
            y=53,
            width=43,
            height=18,

            sourceX = 79,
            sourceY = 7,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/1/3
            x=159,
            y=1,
            width=57,
            height=24,

            sourceX = 71,
            sourceY = 18,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/2/1
            x=207,
            y=101,
            width=29,
            height=16,

            sourceX = 115,
            sourceY = 6,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/2/2
            x=54,
            y=69,
            width=41,
            height=24,

            sourceX = 123,
            sourceY = 10,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/2/3
            x=47,
            y=1,
            width=55,
            height=32,

            sourceX = 130,
            sourceY = 23,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/3/1
            x=145,
            y=53,
            width=19,
            height=18,

            sourceX = 130,
            sourceY = 16,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/3/2
            x=218,
            y=1,
            width=25,
            height=24,

            sourceX = 146,
            sourceY = 27,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/3/3
            x=214,
            y=53,
            width=33,
            height=32,

            sourceX = 161,
            sourceY = 45,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/4/1
            x=95,
            y=99,
            width=29,
            height=18,

            sourceX = 114,
            sourceY = 28,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/4/2
            x=97,
            y=73,
            width=41,
            height=24,

            sourceX = 122,
            sourceY = 45,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/4/3
            x=47,
            y=35,
            width=51,
            height=32,

            sourceX = 130,
            sourceY = 67,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/5/1
            x=214,
            y=87,
            width=31,
            height=12,

            sourceX = 84,
            sourceY = 35,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/5/2
            x=104,
            y=33,
            width=45,
            height=18,

            sourceX = 77,
            sourceY = 52,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/5/3
            x=159,
            y=27,
            width=59,
            height=22,

            sourceX = 69,
            sourceY = 81,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/6/1
            x=157,
            y=99,
            width=27,
            height=18,

            sourceX = 56,
            sourceY = 27,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/6/2
            x=140,
            y=73,
            width=39,
            height=24,

            sourceX = 36,
            sourceY = 42,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/6/3
            x=1,
            y=79,
            width=51,
            height=30,

            sourceX = 14,
            sourceY = 68,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/7/1
            x=186,
            y=99,
            width=19,
            height=18,

            sourceX = 50,
            sourceY = 17,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/7/2
            x=220,
            y=27,
            width=25,
            height=24,

            sourceX = 29,
            sourceY = 27,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/7/3
            x=181,
            y=67,
            width=31,
            height=30,

            sourceX = 4,
            sourceY = 47,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/8/1
            x=126,
            y=99,
            width=29,
            height=18,

            sourceX = 56,
            sourceY = 4,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/8/2
            x=54,
            y=95,
            width=39,
            height=22,

            sourceX = 39,
            sourceY = 5,
            sourceWidth = 199,
            sourceHeight = 108
        },
        {
            -- wifi waves/8/3
            x=104,
            y=1,
            width=53,
            height=30,

            sourceX = 16,
            sourceY = 15,
            sourceWidth = 199,
            sourceHeight = 108
        },
    },
    
    sheetContentWidth = 248,
    sheetContentHeight = 118
}

SheetInfo.frameIndex =
{

    ["punch card"] = 1,
    ["wifi waves/1/1"] = 2,
    ["wifi waves/1/2"] = 3,
    ["wifi waves/1/3"] = 4,
    ["wifi waves/2/1"] = 5,
    ["wifi waves/2/2"] = 6,
    ["wifi waves/2/3"] = 7,
    ["wifi waves/3/1"] = 8,
    ["wifi waves/3/2"] = 9,
    ["wifi waves/3/3"] = 10,
    ["wifi waves/4/1"] = 11,
    ["wifi waves/4/2"] = 12,
    ["wifi waves/4/3"] = 13,
    ["wifi waves/5/1"] = 14,
    ["wifi waves/5/2"] = 15,
    ["wifi waves/5/3"] = 16,
    ["wifi waves/6/1"] = 17,
    ["wifi waves/6/2"] = 18,
    ["wifi waves/6/3"] = 19,
    ["wifi waves/7/1"] = 20,
    ["wifi waves/7/2"] = 21,
    ["wifi waves/7/3"] = 22,
    ["wifi waves/8/1"] = 23,
    ["wifi waves/8/2"] = 24,
    ["wifi waves/8/3"] = 25,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
