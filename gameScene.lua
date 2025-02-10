gameScene = {}

local config = require("config")

function gameScene.load() -- Optional.
  love.window.setTitle("Game Scene") -- Might remove.
end

function gameScene.update(dt)
end

function gameScene.draw()
  love.graphics.printf("Coming Soon...", 0, config.windowHeight / 2, config.windowWidth, "center") -- Remove.
end

return gameScene