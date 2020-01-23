def string_permutations(string):
    # Base case. We want to return the string if the length is one
    if len(string) == 1:
        return string

    output = []

    # Iterate through each character.
    # For each character, we want to then get the permutations of
    # all other characters in the string
    for i, character in enumerate(string):
        # find permutations of remaining characters
        permutations = string_permutations(string[:i] + string[i + 1:])

        # Once we have the permutations of all the other characters,
        # we can add the current character to the beginning of them
        # in order to make permutations inclduing the current character
        for perm in permutations:
            output.append(character + perm)

    return output


print(string_permutations("abc"))
print(string_permutations("ab"))
