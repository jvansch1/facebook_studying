# Determine if each element in a string only occurs once
# A set is probably the cleanest way, but a hash can only be used

require 'set'

def unique_string_hash(string)
  characters_seen = {}

  string.split('').each do |char|
    if characters_seen[char]
      return false
    else
      characters_seen[char] = true
    end
  end

  return true
end

puts unique_string_hash("abcde")
puts unique_string_hash("dod")

def unique_string_set(string)
  characters_seen = Set.new

  string.split('').each do |char|
    if characters_seen.include?(char)
      return false
    else
      characters_seen.add(char)
    end
  end

  return true
end

puts unique_string_set("abcde")
puts unique_string_set("dod")
