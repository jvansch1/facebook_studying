def unique_string_hash(string):
    characters_seen = {}

    for char in string:
        if char in characters_seen:
            return False
        else:
            characters_seen[char] = True

    return True

print(unique_string_hash("abcde"))
print(unique_string_hash("dod"))

def unique_string_set(string):
    characters_seen = set([])

    for char in string:
        if char in characters_seen:
            return False
        else:
            characters_seen.add(char)

    return True

print(unique_string_set("abcde"))
print(unique_string_set("dod"))
