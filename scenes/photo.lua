local composer = require( "composer" )
local Sprite = require("libs.Sprite")
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        local flash = display.newRect(0, 0, 2000, 2000)
        flash.x = display.contentCenterX
        flash.y = display.contentCenterY
        sceneGroup:insert(flash)
        transition.to(flash, {
                time = 200,
                alpha = 0,
                onComplete = function ()
                    if flash.removeSelf then
                        flash:removeSelf()
                        local photo
                        if event.params and event.params.photoSelf then
                            photo = Sprite["objects"].new("photo/2")
                        else
                            photo = Sprite["objects"].new("photo/1")
                        end
                        photo.x = display.contentCenterX
                        photo.y = display.contentCenterY
                        photo.xScale = 2
                        photo.yScale = 2
                        sceneGroup:insert(photo)
                        timer.performWithDelay(500, function()
                            if photo.removeSelf then
                                photo:removeSelf()
                            end
                        end)
                    end
                end
        })

    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene