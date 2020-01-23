def compress_string(string):
    compressed_string = ''
    current_letter = string[0]
    current_letter_count = 1

    for el in string[1:]:
        if el != current_letter:
            compressed_string += f"{current_letter}{current_letter_count}"
            current_letter = el
            current_letter_count = 1
        else:
            current_letter_count += 1

    compressed_string += f"{current_letter}{current_letter_count}"

    return compressed_string

print(compress_string("AAAABBBBBCCD"))
