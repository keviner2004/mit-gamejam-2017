local Control = {}

Control.new = function (target)
    local control = {}

    function control:key(event)
        print("Key detect: ", event.keyName, event.phase)
        local keyName = event.keyName
        local phase = event.phase
        local upPressing = false
        local leftPressing = false
        local rightPressing = false
        local downPressing = false

        if phase == "up" then
            if keyName == "up" then
                upPressing = false
                target:walkUp()
            elseif keyName == "down" then
                downPressing = false
                target:walkDown()
            elseif keyName == "left" then
                leftPressing = false
                target:walkLeft()
            elseif keyName == "right" then
                rightPressing = false
                target:walkRight()
            end
        elseif phase == "down" then
            if keyName == "up" then
                upPressing = true
                
            elseif keyName == "down" then
                downPressing = true
                
            elseif keyName == "left" then
                leftPressing = true
                
            elseif keyName == "right" then
                rightPressing = true
                
            end
        end

    end

    --Runtime:addEventListener("enterFrame", controller)

    Runtime:addEventListener("key", control)

    return control
end

return Control