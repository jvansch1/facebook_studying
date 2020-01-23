array = [1, 2, -1, 3, 4, 10, 10, -10, -1]

def largest_continuous_sum(array):
    current_sum = 0
    maximum_sum = 0

    for el in array:
        current_sum += el

        if current_sum > maximum_sum:
            maximum_sum = current_sum

        if current_sum < 0:
            current_sum = 0

    return maximum_sum

def largest_continuous_array(array):
    current_start = 0
    current_end = 0
    maximum_start = 0
    maximum_end = 0
    current_sum = 0
    maximum_sum = 0
    i = 0

    for el in array:
        current_sum += el
        current_end += 1

        if current_sum > maximum_sum:
            maximum_sum = current_sum
            maximum_end = current_end
            maximum_start = current_start

        if current_sum < 0:
            current_start = i
            current_end = current_start
            current_sum = 0

        i += 1

    return array[maximum_start:maximum_end]







print(largest_continuous_sum(array))
print(largest_continuous_array(array))
