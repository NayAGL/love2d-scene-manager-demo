gameState = "main" -- Current state.
local titleScreen = require("titleScreen") -- Loads and set the game state.
local gameScene = require("gameScene")
local creditsScene = require("creditsScene")

local config =  require("config") -- Loads Config.lua

local function windowSettings() -- Adjust initial window settings here.
  love.window.setMode(config.windowWidth, config.windowHeight)
  love.graphics.setBackgroundColor(0.1, 0.1, 0.4)
end

function love.load() -- Runs once.
  windowSettings()
  gameState = titleScreen -- Instantly runs the scene on start up.
  titleScreen.load()
end

function love.update(dt) -- Game logic (FPS)
  -- Checks for the assigned game scene and calls its update function. 
  if gameState == titleScreen then
    titleScreen.update(dt)
  elseif gameState == gameScene then
    gameScene.update(dt)
  elseif gameState == creditsScene then
    creditsScene.update(dt)
  end
end

function love.draw() -- Renders graphics (FPS)
  -- Checks for the assigned game scene and calls its draw function.
  if gameState == titleScreen then
    titleScreen.draw()
  elseif gameState == gameScene then
    gameScene.draw()
  elseif gameState == creditsScene then
    creditsScene.draw()
  end
end

function love.mousepressed(x, y, button) -- Enable mouse click functions here for other scenes. 
  if gameState == titleScreen then
    titleScreen.mousepressed(x, y, button)
  elseif gameState == creditsScene then
    creditsScene.mousepressed(x, y, button)
  end
end