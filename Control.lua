local Control = {}

Control.new = function (target)
    local control = {}

    function control:key(event)
        if not target.x then
            Runtime:removeEventListener("key", self)
            return
        end
        print("Key detect: ", event.keyName, event.phase)
        local keyName = event.keyName
        local phase = event.phase
        local upPressing = false
        local leftPressing = false
        local rightPressing = false
        local downPressing = false
        local spacePressing = false

        if phase == "up" then
            if keyName == "up" then
                upPressing = false
                --target:onWalkUp()
            elseif keyName == "down" then
                downPressing = false
                --target:onWalkDown()
            elseif keyName == "left" then
                leftPressing = false
                --target:onWalkLeft()
            elseif keyName == "right" then
                rightPressing = false
                --target:onWalkRight()
            elseif keyName == "e" then
                spacePressing = false
                target:onActive("e")
                --target:onRotateWifi("clockwise")
            elseif keyName == "q" then
                spacePressing = false
                target:onActive("q")
                --target:onRotateWifi("anticlockwise")
            
            --elseif keyName == "space" then
                --spacePressing = false
                --target:onActive()
            end

        elseif phase == "down" then
            if keyName == "up" then
                upPressing = true
                target:onWalkUp()
            elseif keyName == "down" then
                downPressing = true
                target:onWalkDown()
            elseif keyName == "left" then
                leftPressing = true
                target:onWalkLeft()
            elseif keyName == "right" then
                rightPressing = true
                target:onWalkRight()
            elseif keyName == "space" then
                spacePressing = true    
                
            end
        end

    end

    --Runtime:addEventListener("enterFrame", controller)

    Runtime:addEventListener("key", control)

    return control
end

return Control