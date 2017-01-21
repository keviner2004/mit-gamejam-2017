--hide status bar
display.setStatusBar( display.HiddenStatusBar )
--for pixel art rendering
display.setDefault( "magTextureFilter", "linear" )
display.setDefault( "minTextureFilter", "nearest" )

local composer = require("composer")

--composer.gotoScene("scenes.spritedemo")
--composer.gotoScene("scenes.muidemo")

--composer.gotoScene("scenes.characterdemo")
composer.gotoScene("scenes.game")
