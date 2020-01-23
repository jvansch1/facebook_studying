# The answer on leetcode only seems to qualify strings with L on left and R on right
# but this is never mentioned in the description. This solution will get
# All substrings regardless of where characters fall in the substring
def balanced_string_split(s)
  balanced_string_count = 0

  s.split('').each_with_index do |start_letter, start_index|
      s[start_index + 1..-1].split('').each_with_index do |end_letter, end_index|
          l_count = 0
          r_count = 0

          s[start_index..end_index].split('').each do |letter|
              if letter == "R"
                  r_count += 1
              else
                  l_count += 1
              end
          end

          if r_count == l_count && s[start_index..end_index].length > 0
              p s[start_index..end_index]
              balanced_string_count += 1
          end
      end
  end

  return balanced_string_count
end

p balanced_string_split("RLRRLLRLRL")

def balanced_substring_split_with_position(s)
  # We will add one for L and subtract on for R, everytime it hits 0 we have a balance
  balance_count = 0
  # keep track of balanced string occurences
  balanced_string_count = 0

  s.split('').each do |letter|
    if letter == "R"
      balance_count -= 1
    else
      balance_count += 1
    end

    if balance_count == 0
      balanced_string_count += 1
    end
  end

  return balanced_string_count
end

p balanced_substring_split_with_position("RLRRLLRLRL")
