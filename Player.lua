local config = require("config") -- Imports real-time inputs.
-- Player class file.
local Player = {} -- Creates a table.
Player.__index = Player

-- Creates a player class.
function Player:new(x, y, radius, speed, sprint)
  local obj = {
    x = x, y = y,
    radius = radius,
    speed = speed,
    sprint = sprint
  }
  setmetatable(obj, Player)
  return obj
end 

function Player:update(dt)
  -- Used 'speed' instead of 'self.speed' to avoid increasing the speed every FPS. 
  local speed = self.speed 
  -- Sprint.
  if love.keyboard.isDown("lshift") then 
    speed = speed * self.sprint
  end
  -- Basic Movements. 
  if love.keyboard.isDown("w") then self.y = self.y - speed * dt end
  if love.keyboard.isDown("s") then self.y = self.y + speed * dt end
  if love.keyboard.isDown("a") then self.x = self.x - speed * dt end
  if love.keyboard.isDown("d") then self.x = self.x + speed * dt end
end

function Player:draw() -- Renders player graphics when called.
  love.graphics.setColor(1, 1, 1)
  love.graphics.circle("fill", self.x, self.y, self.radius)
end

return Player -- Makes the class accessible from other files.