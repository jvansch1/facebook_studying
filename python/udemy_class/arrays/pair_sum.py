lst = [1,3,2,2]
sum = 4

def pair_sum_naive(list, sum):
    pairs = []
    for i in range(len(list)):
        for j in range(i + 1, len(list)):
            if list[i] + list[j] == sum:
                pairs.append((list[i], list[j]))

    print(pairs)

def pair_sum_optimal(list, sum):
    pairs = set()
    differences = {}
    for i in list:
        differences[i] = sum - i

    for i in list:
        target = sum - i

        if target in differences:
            pairs.add((min(i, target), max(i, target)))

    print(pairs)

pair_sum_naive(lst, 4)
pair_sum_optimal(lst, 4)
