def fibonnaci_recursive(n):
    if n < 2:
        return n

    return fibonnaci_recursive(n - 1) + fibonnaci_recursive(n - 2)

print(fibonnaci_recursive(10))

def fibonnaci_memoized(n, memoized = {}):
    if n < 2:
        return n

    if n - 1 not in memoized:
        memoized[n - 1] = fibonnaci_memoized(n - 1, memoized)

    if n - 2 not in memoized:
        memoized[n - 2] = fibonnaci_memoized(n - 2, memoized)

    memoized[n] = memoized[n - 1] + memoized[n - 2]

    return memoized[n]

print(fibonnaci_memoized(10))

def fibonnaci_iterative(n):
    fibonnaci_base = [0, 1]

    while len(fibonnaci_base) <= n:
        fibonnaci_base.append(fibonnaci_base[-1] + fibonnaci_base[-2])

    return fibonnaci_base[-1]

print(fibonnaci_iterative(10))
