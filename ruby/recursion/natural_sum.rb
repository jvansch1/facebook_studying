# Sum all positive ints up to n

def natural_sum(n)
  return "Must be a positive integer" if n < 0
  return 0 if n == 0
  return natural_sum(n - 1) + n
end

p natural_sum(5)
