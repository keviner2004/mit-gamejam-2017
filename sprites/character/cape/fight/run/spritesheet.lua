--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:99964eea1ad4991cc9c4a20b304fd8fc:3333eafd21a8d806f2048a85931dd6d8:c46243f411ca86fe596665ab352bd775$
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
            x=51,
            y=1,
            width=18,
            height=82,

            sourceX = 127,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 2
            x=89,
            y=85,
            width=16,
            height=82,

            sourceX = 128,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 3
            x=91,
            y=1,
            width=16,
            height=82,

            sourceX = 128,
            sourceY = 108,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 4
            x=69,
            y=169,
            width=18,
            height=82,

            sourceX = 127,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 5
            x=49,
            y=85,
            width=20,
            height=82,

            sourceX = 128,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 6
            x=89,
            y=169,
            width=16,
            height=30,

            sourceX = 133,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 7
            x=1,
            y=169,
            width=24,
            height=82,

            sourceX = 125,
            sourceY = 102,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 8
            x=27,
            y=1,
            width=22,
            height=82,

            sourceX = 125,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 9
            x=71,
            y=1,
            width=18,
            height=82,

            sourceX = 127,
            sourceY = 107,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 10
            x=71,
            y=85,
            width=16,
            height=82,

            sourceX = 128,
            sourceY = 108,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 11
            x=89,
            y=201,
            width=10,
            height=18,

            sourceX = 134,
            sourceY = 109,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 12
            x=49,
            y=169,
            width=18,
            height=82,

            sourceX = 127,
            sourceY = 108,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 13
            x=27,
            y=85,
            width=20,
            height=82,

            sourceX = 127,
            sourceY = 105,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 14
            x=1,
            y=1,
            width=24,
            height=82,

            sourceX = 125,
            sourceY = 103,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 15
            x=1,
            y=85,
            width=24,
            height=82,

            sourceX = 125,
            sourceY = 102,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 16
            x=27,
            y=169,
            width=20,
            height=82,

            sourceX = 126,
            sourceY = 104,
            sourceWidth = 300,
            sourceHeight = 300
        },
        {
            -- 17
            x=51,
            y=1,
            width=18,
            height=82,

            sourceX = 127,
            sourceY = 106,
            sourceWidth = 300,
            sourceHeight = 300
        },
    },
    
    sheetContentWidth = 108,
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
    ["10"] = 10,
    ["11"] = 11,
    ["12"] = 12,
    ["13"] = 13,
    ["14"] = 14,
    ["15"] = 15,
    ["16"] = 16,
    ["17"] = 17,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
