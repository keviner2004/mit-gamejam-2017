local composer = require( "composer" )
local Sprite = require("libs.Sprite")
local config = require("GameConfig")

local scene = composer.newScene()
local sfx = require("libs.sfx")
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
    self.head = Sprite["ui"].new("HEAD/1")
    self.head.x = config.contentCenterX - self.head.width
    self.head.y = config.contentCenterY
    self.head.xScale = 2
    self.head.yScale = 2
    self.view:insert(self.head)

    self.quote = display.newText({
        text = "Clear！",
        font = config.font,
        fontSize = config.fontSize,
    })
    self.quote.x = self.head.x + (self.quote.width+self.head.width+200)/2
    self.quote.y = self.head.y
    self.view:insert(self.quote)

    self.numPhotos = event.params and event.params.numPhotos or 0
    self.numSelfPhotos = event.params and event.params.numSelfPhotos or 0
    self.numShare = event.params and event.params.numShare or 0
    
    print(self.numPhotos, self.numSelfPhotos, self.numShare)

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

    self.picturesTitle = display.newText({
        text = "Pictures",
        font = config.font,
        fontSize = config.fontSize,
    })

    self.shareTitle = display.newText({
        text = "Shares",
        font = config.font,
        fontSize = config.fontSize,
    })

    self.picturesValue = display.newText({
        text = self.numPhotos + self.numSelfPhotos,
        font = config.font,
        fontSize = config.fontSize,
    })

    self.picturesValue.fill = {1,1,0}

    self.shareValue = display.newText({
        text = self.numShare,
        font = config.font,
        fontSize = config.fontSize,
    })

    self.shareValue.fill = {1,1,0}

    self.picturesTitle.x = display.contentWidth * 0.75
    self.picturesTitle.y = display.contentHeight * 0.35

    self.picturesValue.x = display.contentWidth * 0.75
    self.picturesValue.y = display.contentHeight * 0.45

    self.shareTitle.x = display.contentWidth * 0.75
    self.shareTitle.y = display.contentHeight * 0.55

    self.shareValue.x = display.contentWidth * 0.75
    self.shareValue.y = display.contentHeight * 0.65

    self.view:insert(self.restartBtn)
    self.view:insert(self.picturesTitle)
    self.view:insert(self.shareTitle)
    self.view:insert(self.picturesValue)
    self.view:insert(self.shareValue)
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