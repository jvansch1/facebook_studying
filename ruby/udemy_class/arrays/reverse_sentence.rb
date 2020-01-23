def reverse_sentence(sentence)
  words = []
  current_word = ''

  sentence.split('').each do |char|
    if char == ' '
      words << current_word
      current_word = ''
    else
      current_word += char
    end
  end

  words << current_word

  index = words.length - 1

  while index > 0
    print "#{words[index]} "
    index -= 1
  end

  print "#{words[0]}."
end

reverse_sentence('This is the best')
