local Character = {}
local Sprite = require("libs.Sprite")

local cameras = {
    "fight"
}

local parts = {
    {
        name = "body",
        file = "nacked",
    },
    {
        name = "cape",
        file = "cape",
    },
    {
        name = "cloth",
        file = "chest",
    },
    {
        name = "pants",
        file = "pants",
    },
    {
        name = "shoes",
        file = "shoes",
    }
}

local actions = {
    {
        name = "fight.1",
        time = 800
    },
    {
        name = "fight.2",
        time = 500
    },
    {
        name = "fight.idle",
        time = 500
    },
    {
        name = "punch.1",
        time = 500
    },
    {
        name = "punch.2",
        time = 500
    },
    {
        name = "punch.3",
        time = 500
    },
    {
        name = "punch.4",
        time = 500
    },
    {
        name = "run",
        time = 500,
        offset = -1
    },
    {
        name = "walk",
        time = 500,
        offset = -1
    },
}

--local character sprites
for i = 1, #cameras do
    for j = 1, #parts do
        for k = 1, #actions do
            local sheetTag = string.format("character.%s.%s.%s", parts[j].name, cameras[i], actions[k].name)
            local sheetImage = string.format("sprites/character/%s/%s/%s/spritesheet.png", parts[j].file, cameras[i], string.gsub(actions[k].name, "%.", "/")) 
            local sheetInfo = string.format("sprites.character.%s.%s.%s.spritesheet", parts[j].file, cameras[i], actions[k].name)
            Sprite.addSheet(sheetTag, sheetImage, sheetInfo)
        end
    end
end

Character.new = function()
    local character = display.newGroup()
    
    function character:init()
        for i = 1, #parts do
            local animation = {}
            local firstSpriteObj = nil
            for j = 1, #actions do
                local spriteTag = string.format("character.%s.%s.%s", parts[i].name, "fight", actions[j].name)
                local spriteObj = Sprite[spriteTag]
                local numOfFrames = spriteObj.getNumOfFrames()
                local sequence = {
                    name = actions[j].name,
                    time = actions[j].time or 500,
                    start=1, 
                    count= numOfFrames + (actions[j].offset or 0),
                    sheet = spriteObj:getSheet()
                }
                animation[#animation+1] = sequence
                print("Init part", parts[i].name, "with action", actions[j].name, "which has", numOfFrames, "frames")
                if not firstSpriteObj then
                    firstSpriteObj = spriteObj
                end
            end
            local part = firstSpriteObj.newAnimation(animation)
            self[parts[i].name] = part
            self:insert(part)
        end
    end

    function character:reset()
        for i = 1, #parts do
            if self[parts[i].name] then
                self[parts[i].name]:removeSelf()
                self[parts[i].name] = nil
            end
        end
    end

    function character:act(actName)
        for i = 1, #parts do
            self[parts[i].name]:setSequence(actName)
            self[parts[i].name]:play()
        end
    end

    function character:idle()
        self:act("fight.idle")   
    end

    function character:fight()
        self:act("fight.1")
    end

    function character:run()
        self:act("run")
    end

    character:init()

    return character
end

return Character