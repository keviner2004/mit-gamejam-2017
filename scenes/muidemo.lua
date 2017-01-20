local composer = require( "composer" )
local mui = require( "materialui.mui" )

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

    mui.init()
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
        mui.newNavbar({
            name = "navbar_demo",
            --width = mui.getScaleVal(500), -- defaults to display.contentWidth
            height = mui.getScaleVal(70),
            left = 0,
            top = 0,
            fillColor = { 0.63, 0.81, 0.181 },
            activeTextColor = { 1, 1, 1, 1 },
            padding = mui.getScaleVal(10),
        })

        mui.newIconButton({
            name = "hello_btn",
            text = "Hello",
            width = mui.getScaleVal(50),
            height = mui.getScaleVal(50),
            x = mui.getScaleVal(0),
            y = mui.getScaleVal(0),
            font = native.systemFont,
            textColor = { 1, 1, 1 },
            textAlign = "center",
        })

        mui.attachToNavBar( "navbar_demo", {
            widgetName = "hello_btn",
            widgetType = "IconButton",
            align = "left",  -- left | right supported
        })

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
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
    mui.destroy() 
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