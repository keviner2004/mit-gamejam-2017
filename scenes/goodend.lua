local composer = require( "composer" )
local Sprite = require("libs.Sprite")
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
 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        self.head = Sprite["ui"].new("HEAD/1")
        self.head.x = config.contentCenterX - self.head.width
        self.head.y = config.contentCenterY
        self.head.xScale = 2
        self.head.yScale = 2
        self.view:insert(self.head)

        self.quote = display.newText({
            text = "過關！",
            font = config.font,
            fontSize = config.fontSize,
        })
        self.quote.x = self.head.x + (self.quote.width+self.head.width+200)/2
        self.quote.y = self.head.y
        self.view:insert(self.quote)

        if event.params then
            self.numPhotos = event.params.numPhotos
            self.numSelfPhotos = event.params.numSelfPhotos
            self.numShare = event.params.numShare
        end
        print(self.numPhotos, self.numSelfPhotos, self.numShare)

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