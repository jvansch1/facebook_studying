# sum all numbers from 0 to n
def sum(n)
  return 0 if n == 0

  return n + sum(n - 1)
end

puts(sum(4))

# if n = 4321, retuen 4 + 3 + 2 + 1
def sum_digits(n)
  return n if n < 10

  return sum_digits(n / 10) + (n % 10)
end

puts(sum_digits(4321))

def word_split(phrase, words, output = [])
  if phrase.length == 0
    return output
  end

  if words.include?(phrase)
    output << phrase
  end

  return (word_split(phrase[0..-2], words, output) + word_split(phrase[1..-1], words, output)).uniq
end

p word_split("themanran", ["the", "ran", "man"])
p word_split("IlovedogsJohn", ["I", "am", "a", "dogs", "lover", "love", "John"])
