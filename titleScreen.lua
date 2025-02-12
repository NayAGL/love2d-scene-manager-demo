titleScreen = {} -- Creates a table.

local config = require("config") -- Imports variables from (config.lua).
local Button = require("Button") -- Imports the button class.

-- Create new buttons here.
local playButton = Button:new(config.btnPlayX, config.btnPlayY,
                              config.btnPlayWidth, config.btnPlayHeight, 
                              1, 0.6, 0, "PLAY", 24, 1, 0.5, 0)

local exitButton = Button:new(config.btnExitX, config.btnExitY,
                              config.btnExitWidth, config.btnExitHeight,
                              0.5, 0, 0.4, "EXIT", 16, 0.4, 0, 0.4)

local creditsButton = Button:new(config.btnCreditsX, config.btnCreditsY,
                                 config.btnCreditsWidth, config.btnCreditsHeight,
                                 0.1, 0.1, 0.2, "Credits", 14, 0, 0, 0.2)

function titleScreen.load()
  love.window.setTitle("Title Screen")
end

function titleScreen.update(dt)
  config.mouseX, config.mouseY = love.mouse.getPosition() -- Gets mouse position.
end

function titleScreen.draw()
  love.graphics.print("FPS: " .. love.timer.getFPS(), 10, 10) -- Shows FPS.

  playButton:draw()
  exitButton:draw()
  creditsButton:draw()
end

function titleScreen.mousepressed(x, y, button) -- Add/Change mouse clicks here.
  if button == 1 then -- Left mouse click.
    -- PLay button.
    if x >= config.btnPlayX and x <= config.btnPlayX + config.btnPlayWidth and 
       y >= config.btnPlayY and y <= config.btnPlayY + config.btnPlayHeight then
        gameState = gameScene
        gameScene.load()
    -- Exit button.
    elseif x >= config.btnExitX and x <= config.btnExitX + config.btnExitWidth and 
           y >= config.btnExitY and y <= config.btnExitY + config.btnExitHeight then
            love.event.quit()
    -- Credits button.
    elseif x >= config.btnCreditsX and x <= config.btnCreditsX + config.btnCreditsWidth and 
           y >= config.btnCreditsY and y <= config.btnCreditsY + config.btnCreditsHeight then
            gameState = creditsScene
            creditsScene.load()
    end
  end
end

return titleScreen -- Makes the game scene accessible from other files.