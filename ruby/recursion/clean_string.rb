# Coding Bat Problem

def clean_string(string)
  if string.length == 1
    return string
  end

  if string[-1] == string[-2]
    return clean_string(string[0..-2]) + ""
  else
    return clean_string(string[0..-2]) + string[-1]
  end
end

def clean_string_iterative(string)
  new_string = ''
  last_seen = nil

  string.split('').each do |letter|
    unless letter == last_seen
      new_string += letter
    end

    last_seen = letter
  end

  return new_string

end

p clean_string("Hello")
p clean_string("abbbbcdd")
p clean_string("yyzzza")
p clean_string_iterative("Hello")
p clean_string_iterative("abbbbcdd")
p clean_string_iterative("yyzzza")
