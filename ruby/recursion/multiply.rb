def multiply(a, b)
  return a if b == 1
  
  return multiply(a, b - 1) + a
end

p multiply(3, 10)
