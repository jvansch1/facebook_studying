require 'byebug'

def elfish_words_iterative(word)
  # see if word has e, l, and f contained in it
  letters_seen = {}

  word.split('').each do |letter|
    if ['e', 'l','f'].include?(letter)
      letters_seen[letter] = true
    end
  end

  ['e', 'l', 'f'].all? do |letter|
    letters_seen[letter] == true
  end
end

def elfish_words_recursive(word, letters_seen = {})
  letter_to_check = word[-1]

  if letter_to_check == "e"
    letters_seen["e"] = true
  elsif letter_to_check == "l"
    letters_seen["l"] = true
  elsif letter_to_check == "f"
    letters_seen["f"] = true
  end

  if (word.length == 0)
    if letters_seen["e"] && letters_seen["l"] && letters_seen["f"]
      return true
    else
      return false
    end
  end

  return elfish_words_recursive(word[0..-2], letters_seen)
end

p elfish_words_iterative("whiteleaf")
p elfish_words_iterative("dok")
p elfish_words_recursive("whiteleaf")
p elfish_words_recursive("dok")
