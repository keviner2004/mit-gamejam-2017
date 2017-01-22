local Sprite = require("libs.Sprite")

local config = require("GameConfig")

local MissionPaper = {}

MissionPaper.new = function()
    local paper = display.newGroup()
    local sprite = Sprite["ui"].new("mission paper/1")

    paper:insert(sprite)

    paper.xOffset = 5
    paper.yOffset = -150
    paper.missionList = {}

    function paper:assginMission(text)
    	local t = display.newText({
    		text = text,
    		font = config.font,
    		fontSize = 20,
    		width = sprite.width -20,
    		height = 0,
    	})
    	t.fill = {0,0,0}

    	local y = self.yOffset + t.height/2
    	for i = 1, #self.missionList do
    		y = y + self.missionList[i].height +10
    	end
    	t.x = self.xOffset
    	t.y = y
    	self.missionList[#self.missionList+1] = t
    	paper:insert(t)
    end

    paper:assginMission("*Do not miss the bus!")
    paper:assginMission("*Do not run out of the battery!")
    paper:assginMission("*Connected with WiFi all the time!")
    paper:assginMission("Take photos for every viewspot!")
    paper:assginMission("Dont forget check-in!")

    return paper
end

return MissionPaper