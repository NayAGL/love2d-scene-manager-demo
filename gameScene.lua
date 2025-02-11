gameScene = {} -- Creates an empty table.

local config = require("config") -- Imports variables from (config.lua).
local Player = require("Player") -- Imports the button class.

-- Create player here.
player = Player:new(config.playerX, config.playerY, config.playerRadius,
                       config.playerSpeed, config.playerSprint)

function gameScene.load()
  love.window.setTitle("Game Scene") -- Might remove.
end

function gameScene.update(dt)
  player:update(dt)
end

function gameScene.draw()
  player:draw()
end

return gameScene -- Returns the table.