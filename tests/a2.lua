local number = math.random(1, 5)
print("Guess a number from 1 to 5\n"..number)
local tries = 3
local running = true
while running do
  local guess = io.read()
  local guess_num = tonumber(guess)
  if guess_num == number then
    print("You're right!")
    running = false
  elseif tries == 0 then
    print("You lose :(")
    running = false
  else
    print("You have "..tries.." tries")
    tries = tries - 1
  end
end
