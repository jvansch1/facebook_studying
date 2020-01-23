def reverse_sentence(sentence):
    words = []
    current_word = ""

    i = 0

    while i < len(sentence):
        if sentence[i] == " ":
            words.append(current_word)
            current_word = " "
        else:
            current_word += sentence[i]

        i += 1

    words.append(current_word)

    i = len(words) - 1

    while i > 0:
        print(f"{words[i]} ")

        i -= 1

    print(f"{words[0]}.")

reverse_sentence("This is the best.")
