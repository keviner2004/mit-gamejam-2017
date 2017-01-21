local Sprite = require("libs.Sprite")

local MissionPaper = {}

MissionPaper.new = function()
    local missionPaper = Sprite["ui"].new("mission paper/1")

    return missionPaper
end

return MissionPaper