require 'byebug'

def permutations(string)
  if string.length == 1
    return [string]
  end

  string.split("").each_with_index do |char, index|
    # We want to get the remaining characters besides the current one
    characters_before = string[0...index] || ""
    characters_after = string[index + 1..-1] || ""

    characters_remaining = characters_before + characters_after

    # We want to find the permutations of all remaining characters
    # For example, if out string is "abc" and we are looking at "b"
    # We want to return a list of ["ac", "ca"]

    permutations_of_remainder = permutations(characters_remaining)

    # Once we have the permutations of the remaining characters, we add our
    # current char to each.
    # Ex perms = ["ac", "ca"]
    # After this step = ["bac", "cab"]
    permutations_of_remainder.each do |perm|
      output << char + perm
    end
  end

  return output
end

print(permutations("abc"))
