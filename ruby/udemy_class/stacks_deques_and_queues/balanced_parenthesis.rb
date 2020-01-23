def balanced_parenthesis(string)
  pairs = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }

  # Stack that we will push open
  # brakcets onto

  brackets_seen = []

  string.split('').each do |char|
    if pairs[char]
      brackets_seen << char
    else

      # We want to return if brackets seen is empty.
      # This means we have a closing brace before an opening
      return false if brackets_seen.empty?

      # Get last element and compare
      last_seen = brackets_seen[-1]

      # if the compliment of the last seen
      # opening is not the current char
      # then we know it is not balanced

      if pairs[last_seen] != char
        return false
      else
        brackets_seen.pop
      end
    end
  end

  # There may be left over opening
  # braces that have no closing.
  # It is only balanced if there are no unclosed
  # pairs

  brackets_seen.empty?
end

puts balanced_parenthesis("([])")
puts balanced_parenthesis("([})")
puts balanced_parenthesis("[[[]])]")
puts balanced_parenthesis("()()")
