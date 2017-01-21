local config = {}

config.MODE_DEBUG = 1
config.MODE_DEMO = 2

config.mode = config.MODE_DEMO

config.contentWidth = display.contentWidth
config.contentHeight = display.contentHeight
config.contentCenterX = display.contentCenterX
config.contentCenterY = display.contentCenterY

config.secLimit = 450

config.fontSize = 30
config.font = native.systemFont

-- Board
config.boardWSize = 16
config.boardHSize = 10

return config