local Sprite = require("libs.Sprite")
--hide status bar
display.setStatusBar( display.HiddenStatusBar )
--for pixel art rendering
display.setDefault( "magTextureFilter", "linear" )
display.setDefault( "minTextureFilter", "nearest" )
--load sprites
Sprite.addSheet("objects", "sprites/objects.png", "sprites.objects")
Sprite.addSheet("ui", "sprites/ui.png", "sprites.ui")
Sprite.addSheet("new_character", "sprites/new_character.png", "sprites.new_character")
Sprite.addSheet("event", "sprites/event.png", "sprites.event")
Sprite.addSheet("enemy", "sprites/enemy.png", "sprites.enemy")
--load main scene
local composer = require("composer")

composer.gotoScene("scenes.game")
--composer.gotoScene("scenes.badend")
