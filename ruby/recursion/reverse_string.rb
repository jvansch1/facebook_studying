def reverse_string(string)
  if string.length == 1
    return string
  end

  return reverse_string(string[1..-1]) + string[0]
end

p reverse_string("This better work for a longer string!")
