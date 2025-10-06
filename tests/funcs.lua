function factorial(n)
  if n==0 then
    return 1
  else
    return n*factorial(n-1)
  end
end
print("Type the number: ")
local input = io.read()
local number = tonumber(input)
print("The factorial of the number "..number.." is "..factorial(number))
