# This is a greedy algorithm, We will always take the greatest
# value that we can even if it means we may have to take a
# greater numner of smaller coinds in the future

def make_change(amount, coins)
  # if the amount is 0, we do not have to make anymore change
  # so return 0
  if amount == 0
    return 0
  end

  coin_index = -1

  # iterate through coins and find the largest one that is under our total
  while coins[coin_index] > amount
    coin_index -= 1
  end

  # Return 1(since we found a coin we can use) + the result of making change for the rest of the amount
  return 1 + (make_change(amount - coins[coin_index], coins))
end

# print(make_change(10, [1, 5]))
puts make_change(45, [1,5,10,25])
puts make_change(23, [1,5,10,25])
puts make_change(74, [1,5,10,25])
