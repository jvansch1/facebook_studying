def fibonnaci_recursive(n)
  return n if n < 2

  return fibonnaci_recursive(n - 1) + fibonnaci_recursive(n - 2)
end

puts fibonnaci_recursive(10)

def fibonnaci_memoized(n, memoized = {})
  return n if n < 2

  memoized[n - 1] = fibonnaci_memoized(n - 1, memoized) unless memoized[n - 1]
  memoized[n - 2] = fibonnaci_memoized(n - 2, memoized) unless memoized[n - 2]

  return memoized[n - 1] + memoized[n - 2]
end

puts(fibonnaci_memoized(10))

def fibonnaci_iterative(n)
 fibonnaci_base = [0, 1]

 while fibonnaci_base.length <= n
   fibonnaci_base << fibonnaci_base[-1] + fibonnaci_base[-2]
 end

 return fibonnaci_base[-1]
end

puts(fibonnaci_iterative(10))
