local screen = {}
local mode = "letterBox"
print(display.contentWidth, display.contentHeight, display.pixelWidth, display.pixelHeight)

local scaleW = display.pixelWidth / display.contentWidth
local scaleH = display.pixelHeight / display.contentHeight

if mode == "zoomEven" then
    if display.contentWidth * scaleH > display.pixelWidth then
        screen.top = 0
        screen.left = (display.contentWidth * scaleH - display.pixelWidth)/2/scaleH
    else
        screen.top = (display.contentHeight * scaleW - display.pixelHeight)/2/scaleW
        screen.left = 0
    end
else
    if display.contentWidth * scaleH < display.pixelWidth then
        screen.top = 0
        screen.left = -(display.pixelWidth - display.contentWidth * scaleH)/2/scaleH
    else
        screen.top = -(display.pixelHeight - display.contentHeight * scaleW)/2/scaleW
        screen.left = 0
    end
end

screen.right = screen.left + display.pixelWidth / scaleH
screen.bottom = screen.top + display.pixelHeight / scaleW

print("Screen top, left ", screen.top, screen.left, screen.right, screen.bottom)

return screen

