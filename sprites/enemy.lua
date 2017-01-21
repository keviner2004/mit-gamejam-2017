--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:16e087a9396ca7abc794f3c09b944fb6:fe6fdbfffd0fce952aabdd58f540c6b1:ccc845fcea7877c714e6b9a1b1e28af7$
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
            -- left/standingstill/1
            x=1,
            y=231,
            width=51,
            height=111,

            sourceX = 3,
            sourceY = 6,
            sourceWidth = 57,
            sourceHeight = 117
        },
        {
            -- left/walking/1
            x=1,
            y=344,
            width=51,
            height=111,

            sourceX = 3,
            sourceY = 6,
            sourceWidth = 57,
            sourceHeight = 117
        },
        {
            -- left/walking/2
            x=1,
            y=1,
            width=51,
            height=113,

            sourceX = 3,
            sourceY = 4,
            sourceWidth = 57,
            sourceHeight = 117
        },
        {
            -- right/standingstill/1
            x=1,
            y=457,
            width=51,
            height=111,

            sourceX = 3,
            sourceY = 6,
            sourceWidth = 57,
            sourceHeight = 117
        },
        {
            -- right/walking/1
            x=1,
            y=570,
            width=51,
            height=111,

            sourceX = 3,
            sourceY = 6,
            sourceWidth = 57,
            sourceHeight = 117
        },
        {
            -- right/walking/2
            x=1,
            y=116,
            width=51,
            height=113,

            sourceX = 3,
            sourceY = 4,
            sourceWidth = 57,
            sourceHeight = 117
        },
    },
    
    sheetContentWidth = 53,
    sheetContentHeight = 682
}

SheetInfo.frameIndex =
{

    ["left/standingstill/1"] = 1,
    ["left/walking/1"] = 2,
    ["left/walking/2"] = 3,
    ["right/standingstill/1"] = 4,
    ["right/walking/1"] = 5,
    ["right/walking/2"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
