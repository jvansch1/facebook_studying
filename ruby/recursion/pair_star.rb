# Coding Bat problem

def pair_star(string, last_letter = nil)
  if string.length == 0
    return string
  end

  if last_letter && string[-1] == last_letter
    return pair_star(string[0..-2], string[-1]) + string[-1] + "*"
  end

  return pair_star(string[0..-2], string[-1]) + string[-1]
end

p pair_star("hello")
p pair_star("xxyy")
p pair_star("aaaa")
