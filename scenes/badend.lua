local composer = require( "composer" )
local sfx = require("libs.sfx")
local config = require("GameConfig")

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
    self.background = display.newImage('res/failed.png')    
    self.head = display.newImage('res/badend.png')
    self.head.x = config.contentCenterX - self.head.width
    self.head.y = config.contentCenterY
    self.head.xScale = 2
    self.head.yScale = 2
    self.background.x = display.contentCenterX
    self.background.y = display.contentCenterY
    
    self.view:insert(self.head)
    self.view:insert(self.background)
    

    self.quote = display.newText({
        text = "勝敗乃兵家常事，\n大俠請重新來過。",
        font = config.font,
        fontSize = config.fontSize,
    })
    self.quote.x = self.head.x + (self.quote.width+self.head.width+200)/2
    self.quote.y = self.head.y
    self.view:insert(self.quote)

    self.restartBtn = display.newText({
        text = "Restart",
        font = config.font,
        fontSize = config.fontSize,
    })

    self.restartBtn.x = display.contentCenterX
    self.restartBtn.y = display.contentWidth/2
    self.restartBtn:addEventListener("tap", function(event)
        sfx:stop()
        composer.gotoScene("scenes.game")
    end)
    self.view:insert(self.restartBtn)
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        Runtime:addEventListener("key", self)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end

function scene:key(event)
    if event.keyName == "enter" and event.phase == "up" then
        sfx:stop()
        composer.gotoScene("scenes.game")
    end
end
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
        Runtime:removeEventListener("key", self)
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