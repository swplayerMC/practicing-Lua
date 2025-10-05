local config = require "config"
local running = true
local pos = { 0, 0 }
local move = function(input, moving)
  if input == moving.left then
    pos[1] = pos[1] - 5
  end
  if input == moving.up then
    pos[2] = pos[2] + 5
  end
  if input == moving.right then
    pos[1] = pos[1] + 5
  end
  if input == moving.down then
    pos[2] = pos[2] - 5
  end
  return pos
end
while running do
  move("A", config)
end
