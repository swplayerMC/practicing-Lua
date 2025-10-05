local products = {
  cpu = 500,
  gpu = 1800,
  motherboard = 800,
  font = 300,
  ram = 140 * 2,
  case = 50
}
local function calc_total(product_dict)
  local total = 0
  local i = 1
  for _, price in pairs(product_dict) do
    total = total + price
    i = i + 1
  end
  return total
end

local total_amount = calc_total(products)
print(total_amount)
