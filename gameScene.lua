gameScene = {} -- Creates an empty table.

local config = require("config") -- Imports variables from (config.lua).
local Player = require("Player") -- Imports the player class file.
local Enemy = require("Enemy") 

-- Player.
player = Player:new(config.playerX, config.playerY, config.playerRadius,
                    config.playerSpeed, config.playerSprint)
-- Enemy.
enemy = Enemy:new(config.enemyX, config.enemyY, config.enemyRadius,
                  config.enemySpeed)

function gameScene.load()
  love.window.setTitle("Game Scene") -- Might remove.
end

function gameScene.update(dt)
  player:update(dt)
  enemy:update(dt, player)
end

function gameScene.draw()
  player:draw()
  enemy:draw()
end

return gameScene -- Returns the table.