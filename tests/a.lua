-- For strings, ints, floats: the same as Python (almost)
local listvar = { "use", "braces", "not brackets", "for some reason" }
local dictionary = {
  key = "value",
  name = "Calebe",
  age = 15,
--  likes = { "programing", "video editing", "drawing" }
}
for item in ipairs(listvar) do
  print(item)
end
for key, value in pairs(dictionary) do
  if not key == "key" then
    print(key..": "..value)
  end
end
-- This is a comment 
-- functions: 
local function foo(a, b)
  local result = a + b
  return result
end
-- Or 
local greet = function(param)
  local message = "Hi, "..param.."!\n"
  print(message)
end
--[[
Multi line comment
Accessing config from other files:
--]]
local example = require "example" -- File name without extention
greet(dictionary["name"])
print(example.text)
example.say_hello()
print(foo(15, 20))
