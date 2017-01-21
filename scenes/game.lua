local composer = require( "composer" )

local Wifi = require( "obj.wifi" )
local PhotoSpot = require( "obj.PhotoSpot" )
local ShareSpot = require( "obj.ShareSpot" )
local ChargeStation = require( "obj.ChargeStation" )

local FatGuy = require("FatGuy")
local NewCharacter = require("NewCharacter")
 
local GridContainer = require( "libs.ui.GridContainer" )
local config = require( "GameConfig" )

local sfx = require("libs.sfx")

--ui
local Battery = require("ui.Battery")
local Head = require("ui.Head")
local MissionPaper = require("ui.MissionPaper")

local screen = require("libs.screen")
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
        config.currentLevel = 1

        self.universe = display.newGroup()
        self.universe.x = config.contentCenterX
        self.universe.y = config.contentCenterY
        sceneGroup:insert(self.universe)

        -- set up map
        self.map = GridContainer.new({
            cols = config.boardWSize,
            rows = config.boardHSize,
            maxW = config.contentWidth,
            maxH = config.contentHeight,
        })
        self.universe:insert(self.map)        

        distList = {
            {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  0, -1, -1, -1},
            {-1, -1, -1, -1, -1, -1, -1,  0, -1, -1, -1, -1,  0, -1, -1, -1},
            {-1, -1, -1,  0,  0,  0, -1,  0,  0,  0,  0,  0,  0, -1, -1, -1},
            {-1, -1, -1,  0, -1,  0, -1,  0, -1,  0, -1, -1, -1, -1, -1, -1},
            {-1, -1, -1,  0,  0,  0,  0,  0,  0,  0, -1, -1, -1, -1, -1, -1},
            {-1, -1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
            {-1, -1, -1,  0,  0,  0,  0,  0,  0,  0,  0,  0, -1, -1, -1, -1},
            {-1, -1, -1, -1, -1, -1, -1, -1, -1,  0, -1,  0, -1, -1, -1, -1},
            {-1, -1, -1,  0,  0,  0,  0,  0,  0,  0,  0,  0, -1, -1, -1, -1},
            {-1, -1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
        }

        for i = 1, config.boardHSize do
            for j = 1, config.boardWSize do
                self.map.grid[i][j].dist = distList[i][j]
                self.map.grid[i][j].wifiCount = 0
                if config.mode == config.MODE_DEBUG then    
                    local text = display.newText({
                        text = '('..tostring(i)..', '..tostring(j)..') '..tostring(self.map.grid[i][j].dist),
                        font = native.systemFont,
                        fontSize = 20,
                    })
                    self.map:insertAt(text, i, j)
                end
            end
        end

        -- add background
        self.bgImage = display.newImage('res/level1.png')
        --self.bgImage.y = self.map.gridH/2
        self.universe:insert(self.bgImage)
        self.bgImage:toBack()

        self.char = NewCharacter.new({
            universe = self.universe,
            map = self.map,
            i = 10,
            j = 4,
            yOffset = -40,
        })

        local reInsert = function()
            for i = 1, config.boardHSize do
                for j = 1, config.boardWSize do
                    grid = self.map.grid[i][j]
                    if grid.bg then
                        self.universe:insert(grid.bg)
                    end
                    if grid.obj then
                        self.universe:insert(grid.obj)
                    end
                end
            end
        end

        self.char:addEventListener( "move", reInsert)
        self.char:addEventListener( "action", self )
        self.char:addEventListener( "battery", self )

        -- init objs
        local wifi = Wifi.new({
            universe = self.universe,
            map = self.map,
            i = 8,
            j = 11,
            areas = {Wifi.AREA_LEFT},
            yOffset = -60,
        })
        wifi:showGrid()
        wifi:setDir(7)

        wifi = Wifi.new({
            universe = self.universe,
            map = self.map,
            i = 6,
            j = 5,
            areas = {Wifi.AREA_LEFTTOP},
            yOffset = -60,
        })
        wifi:showGrid()
        wifi:setDir(8)
        
        wifi = Wifi.new({
            universe = self.universe,
            map = self.map,
            i = 4,
            j = 5,
            areas = {Wifi.AREA_BTM},
            yOffset = -60,
        })
        wifi:showGrid()
        wifi:setDir(5)

        wifi = Wifi.new({
            universe = self.universe,
            map = self.map,
            i = 4,
            j = 9,
            areas = {Wifi.AREA_TOP},
            yOffset = -60,
        })
        wifi:showGrid()
        wifi:setDir(1)

        FatGuy.new({
            universe = self.universe,
            map = self.map,
            i = 7,
            j = 10,
        }):addEventListener( "move", reInsert)

        FatGuy.new({
            universe = self.universe,
            map = self.map,
            i = 3,
            j = 8,
        }):addEventListener( "move", reInsert)

        FatGuy.new({
            universe = self.universe,
            map = self.map,
            i = 5,
            j = 4,
        }):addEventListener( "move", reInsert)

        PhotoSpot.new({
            universe = self.universe,
            map = self.map,
            i = 9,
            j = 12,
        })

        PhotoSpot.new({
            universe = self.universe,
            map = self.map,
            i = 2,
            j = 8,
        })
        
        ShareSpot.new({
            universe = self.universe,
            map = self.map,
            i = 5,
            j = 5,
        })

        ChargeStation.new({
            universe = self.universe,
            map = self.map,
            i = 5,
            j = 7,
            yOffset = -60,
        })

        self.remainTimeText = display.newText({
            text = "123",
            font = config.font,
            fontSize = config.fontSize,
        })
        self.universe:insert(self.remainTimeText)
        self.remainTimeText.y = self.remainTimeText.y - config.contentHeight/2 + self.map.gridH/2
        self.remainTime = config.timeLimit

        --place ui
        local battery = Battery.new()

        local head = Head.new()
        head.x = screen.left + head.width/2
        head.y = screen.top + head.height/2

        battery.x = head.x + head.width/4
        battery.y = head.y + head.height/2.2
        battery:setLevel(self.char.charge)

        local missionPaper = MissionPaper.new()

        missionPaper.x = screen.right - missionPaper.width/2 - missionPaper.width * 0.1
        missionPaper.y = missionPaper.height/2 + missionPaper.width * 0.1

        sceneGroup:insert(battery)
        sceneGroup:insert(head)
        sceneGroup:insert(missionPaper)

        self.batteryUI = battery

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        sfx:play("bgm", {loops=-1})
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

local frame = -1

function scene:enterFrame()
    frame = (frame+1)%60

    if frame == 0 and self.remainTime > 0 then
        self.remainTime = self.remainTime -1
        self.remainTimeText.text = os.date("!%M"..":".."%S", self.remainTime)
    end
end

function scene:battery(event)
    print("Charge changed ", event.charge)
    self.batteryUI:setLevel(event.charge)
end

function scene:action( event )
    if event.phase == "walk" and event.dir == "up" then
        self.char:toUp()
    elseif event.phase == "walk" and event.dir == "down" then
        self.char:toDown()
    elseif event.phase == "walk" and event.dir == "left" then
        self.char:toLeft()
    elseif event.phase == "walk" and event.dir == "right" then
        self.char:toRight()
    elseif event.phase == "rotate" and event.dir == "clockwise" then
        self.char:toRotateWifi(1)
    elseif event.phase == "rotate" and event.dir == "anticlockwise" then
        self.char:toRotateWifi(-1)
    elseif event.phase == "active" then
        local bg = self.map.grid[self.char.i][self.char.j].bg
        if bg then
            if bg.tag == "photo" then
                self.char:toPhoto()
            elseif bg.tag == "charge" then
                self.char:toCharge()
            elseif bg.tag == "share" then
                self.char:toShare()
            end
        end
    end
end
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
Runtime:addEventListener( "enterFrame", scene )

return scene