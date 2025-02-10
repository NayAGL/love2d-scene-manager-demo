local config = require("config") -- Imports real-time inputs.
-- Button class file.
local Button = {} -- Creates a table.
Button.__index = Button

-- Creates a button class.
function Button:new(x, y, width, height,
                    r, g, b, text, textSize,
                    r2, g2, b2)
  local obj = {
    x = x, y = y,
    width = width, height = height,
    r = r, g = g, b = b,
    text = text or "text",
    textSize = textSize,
    mouseX = mouseX, mouseY = mouseY,
    r2 = r2, g2 = g2, b2 = b2
  }
  setmetatable(obj, Button)
  return obj
end 

function Button:draw() -- Renders button graphics when called.
  -- Checks if the cursor is within the range of the button.
  if config.mouseX >= self.x and config.mouseX <= self.x + self.width and 
     config.mouseY >= self.y and config.mouseY <= self.y + self.height then
      love.graphics.setColor(self.r2, self.g2, self.b2)
  else
    love.graphics.setColor(self.r, self.g, self.b)
  end
  -- Button style and text adjustments. 
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height, 15, 15) -- (15, 15) = Rounded corners.
  love.graphics.setColor(1, 1, 1) -- Will remove/change if font colors require manual input.
  love.graphics.setFont(love.graphics.newFont(self.textSize))
  love.graphics.printf(self.text, self.x, self.y + (self.height - self.textSize) / 2, self.width, "center")
end

return Button -- Makes the class accessible from other files.