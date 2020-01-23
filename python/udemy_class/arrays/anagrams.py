def anagrams(string1, string2):

    character_count = {}

    for char in string1:
        char = char.lower()
        if char != ' ':
            if char in character_count:
                character_count[char] += 1
            else:
                character_count[char] = 1

    for char in string2:
        char = char.lower()
        if char != ' ':
            if char in character_count:
                character_count[char] -= 1
            else:
                character_count[char] = 1

    for k in character_count:
        if character_count[k] != 0:
            return False

    return True

print(anagrams("dog", "God"))
print(anagrams("poo", "Head"))
