-- Creates a table for the variables. 
local config = {
  -- Window adjustments.
  windowWidth = 400,
  windowHeight = 500,
  -- Play button adjustments.
  btnPlayWidth = 130,
  btnPlayHeight = 50,
  -- Exit button adjustments.
  btnExitWidth = 100,
  btnExitHeight = 40,
  -- Credits button adjustments.
  btnCreditsWidth = 100,
  btnCreditsHeight = 40,
  -- Return button adjustments.
  btnReturnWidth = 85,
  btnReturnHeight = 40,
  -- Cursor adjustments.
  mouseX = 0,
  mouseY = 0,
  -- Player adjustments.
  playerX = 100,
  playerY = 100,
  playerRadius = 20,
  playerSpeed = 100,
  playerSprint = 1.5,
  playerHealth = 3
}

-- Play button adjustments.
config.btnPlayX = (config.windowWidth - config.btnPlayWidth) / 2
config.btnPlayY = (config.windowHeight - config.btnPlayHeight) / 2
-- Exit button adjustments.
config.btnExitX = (config.windowWidth - config.btnExitWidth) / 2
config.btnExitY = config.btnPlayY + config.btnPlayHeight + 7
-- Credits button adjustments.
config.btnCreditsX = (config.windowWidth - config.btnCreditsWidth) / 2
config.btnCreditsY = config.btnExitY + config.btnExitHeight + 5
-- Return button adjustments..
config.btnReturnX = 10
config.btnReturnY = 10

return config -- Makes the table accessible. 