def factorial(n)
  return 1 if n == 1
  return factorial(n - 1) * n
end

p factorial(10)
