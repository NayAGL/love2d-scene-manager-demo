local config = require("config") 
-- Enemy class file.
local Enemy = {}
Enemy.__index = Enemy

-- Creates a Enemy class.
function Enemy:new(x, y, radius, speed)
  local obj = {
    x = x, y = y,
    radius = radius,
    speed = speed
  }
  setmetatable(obj, Enemy)
  return obj
end 

function Enemy:update(dt, target) -- 'target' can be replaced with other objects.
  -- To get the direction of the object.
  local dx = target.x - self.x
  local dy = target.y - self.y
  -- Using Pythagoras' theorem to find the distance between the enemy and the object. 
  local distance = math.sqrt(dx * dx + dy * dy)

  if distance > 0 then
    -- 'dx / distance' & 'dy / distance' makes a unit vector. (Normalization)
    self.x = self.x + (dx / distance) * self.speed * dt
    self.y = self.y + (dy / distance) * self.speed * dt
  end
end

function Enemy:draw() -- Renders Enemy graphics when called.
  love.graphics.setColor(0, 0, 0) -- Will remove/change. 
  love.graphics.circle("fill", self.x, self.y, self.radius)
end

return Enemy