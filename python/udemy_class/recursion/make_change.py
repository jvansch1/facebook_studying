def make_change(amount, coins):
    if amount == 0:
        return 0

    coins_index = -1

    while coins[coins_index] > amount:
        coins_index -= 1

    return 1 + make_change(amount - coins[coins_index], coins)


print(make_change(45, [1,5,10,25]))
print(make_change(23, [1,5,10,25]))
print(make_change(74, [1,5,10,25]))
