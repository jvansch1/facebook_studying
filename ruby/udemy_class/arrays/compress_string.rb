def compress_string(string)
  compressed_string = ''
  current_letter = string[0]
  current_letter_count = 1

  string[1..-1].split('').each do |char|
    if current_letter != char
      compressed_string += "#{current_letter}#{current_letter_count}"
      current_letter = char
      current_letter_count = 1
    else
      current_letter_count += 1
    end
  end

  compressed_string += "#{current_letter}#{current_letter_count}"
end

puts(compress_string("AAAABBBCCCDDDDD"))
puts(compress_string("AAAaaa"))
