creditsScene = {}

local config = require("config")
local Button = require("Button")

-- Create new buttons here.
local returnButton = Button:new(config.btnReturnX, config.btnReturnY,
                         config.btnReturnWidth, config.btnReturnHeight, 
                         0.1, 0.6, 0.1, "Return", 14, 0.1, 0.5, 0.1)

function creditsScene.load() -- Optional.
  love.window.setTitle("Credits")
end

function creditsScene.update(dt)
  config.mouseX, config.mouseY = love.mouse.getPosition() -- Gets mouse position.
end

function creditsScene.draw()
  returnButton:draw()
  love.graphics.printf("Developed by Nay.AGL", 0, config.windowHeight / 2, config.windowWidth, "center") -- Remove.
end

function creditsScene.mousepressed(x, y, button) -- Add/Change mouse clicks here.
  if button == 1 then -- Left mouse click.
    -- Return button.
    if x >= config.btnReturnX and x <= config.btnReturnX + config.btnReturnWidth and 
       y >= config.btnReturnY and y <= config.btnReturnY + config.btnReturnHeight then
        gameState = titleScreen
        titleScreen.load()
    end
  end
end

return creditsScene