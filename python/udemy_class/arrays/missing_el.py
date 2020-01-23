arr1 = [1,2,3,4,5,6,7]
arr2 = [3,7,2,1,4,6]

def missing_element(arr1, arr2):
    arr2_character = {}

    for el in arr2:
        arr2_character[el] = True

    for el in arr1:
        if el not in arr2_character:
            return el

def missing_element_with_sum(arr1, arr2):
    # Here we find both sums. Since one
    # element is missing from arr2, if we find the difference that
    # will be the value of the missing el
    arr1_sum = sum(arr1)
    arr2_sum = sum(arr2)

    return arr1_sum - arr2_sum

print(missing_element(arr1, arr2))
print(missing_element_with_sum(arr1, arr2))
