def balanced_parenthesis(string):
    pairs = {
        "(": ")",
        "[": "]",
        "{": "}"
    }

    opening_brackets = []

    for char in string:
        if char in pairs:
            # It is an opening bracket so add to stack
            opening_brackets.append(char)
        else:
            if len(opening_brackets) == 0:
                return False

            last_seen = opening_brackets.pop()

            if pairs[last_seen] != char:
                return False

    return len(opening_brackets) == 0

print(balanced_parenthesis("([])"))
print(balanced_parenthesis("([})"))
print(balanced_parenthesis("[[[]])]"))
print(balanced_parenthesis("()()"))
