# efficient solution

def anagrams(string1, string2)

  string_count = Hash.new { |h, k| h[k] = 0 }

  string1.split('').each do |el|
    if el != " "
      string_count[el.downcase] += 1
    end
  end

  string2.split('').each do |el|
    if el != " "
      string_count[el.downcase] -= 1
    end
  end

  string_count.each do |k, v|
    return false unless v == 0
  end

  return true
end

p anagrams("dog", "god ")
p anagrams("poo", "head")

def sort_anagrams(string1, string2)
  stripped1 = string1.gsub(' ', '')
  stripped2 = string2.gsub(' ', '')

  return stripped1.split('').sort == stripped2.split('').sort
end

p sort_anagrams("dog", "god ")
p sort_anagrams("poo", "head")
