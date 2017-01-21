local composer = require( "composer" )

local Wifi = require( "obj.wifi" )

local FatGuy = require("FatGuy")
 
local GridContainer = require( "libs.ui.GridContainer" )
local config = require( "GameConfig" )

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
        scene.universe = display.newGroup()

        scene.map = GridContainer.new({
            cols = config.boardWSize,
            rows = config.boardHSize,
            maxW = config.contentWidth,
            maxH = config.contentHeight,
        })

        for i = 1, config.boardHSize do
            for j = 1, config.boardWSize do
                scene.map.grid[i][j].wifiCount = 0



                if config.mode == config.MODE_DEBUG then    
                    local text = display.newText({
                        text = '('..tostring(i)..', '..tostring(j)..')',
                        font = native.systemFont,
                        fontSize = 20,
                    })
                    scene.map:insertAt(text, i, j)
                end
            end
        end

        local fat = FatGuy.new({
            universe = scene.universe,
            map = scene.map,
            i = 2,
            j = 2,
        })

        local wifi = Wifi.new({
            map = scene.map,
            i = 2,
            j = 3,
        })

        scene.universe:insert(fat)

        scene.universe:insert(scene.map)

        scene.universe.x = config.contentCenterX
        scene.universe.y = config.contentCenterY
        sceneGroup:insert(scene.universe)
 
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