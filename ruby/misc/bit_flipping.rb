def bit_flipping(number)
  number_as_binary_string = number.to_s(2).rjust(32, '0')
  new_string = ''

  number_as_binary_string.split('').each do |bit|
    new_bit = bit == "1" ? "0" : "1"
    new_string += new_bit
  end

  new_string.to_i(2)
end

p bit_flipping(4)
