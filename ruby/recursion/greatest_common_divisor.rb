# Naive solution

def naive_gcd(a, b, divisor = nil)
  if divisor == nil
    divisor = [a,b].max
  end

  if (a % divisor == 0 && b % divisor == 0)
    return divisor
  end

  return naive_gcd(a,b, divisor - 1)
end

p naive_gcd(8, 12)

def euclidian_gcd(a, b)
  if a == 0
    return b
  end

  return euclidian_gcd(b % a, a)
end

p euclidian_gcd(8, 12)
