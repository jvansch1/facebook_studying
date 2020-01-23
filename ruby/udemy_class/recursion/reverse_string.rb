
def reverse_string(string)
  if string.length == 1
    puts "Hitting Base Case: #{string}"
    return string
  end


  puts "Portion left to revese: #{string[1..-1]}"
  puts "Portion Reversed: #{string[0]}"
  puts "String at this point: #{string[1..-1] + string[0]}"
  return reverse_string(string[1..-1]) + string[0]
end

print(reverse_string("abc"))
