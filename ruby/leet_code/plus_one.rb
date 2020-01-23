require 'byebug'

def plus_one(digits)
    digits[-1] += 1
    carryover = 0

    if digits[-1] == 10
        carryover = 1
        digits[-1] = 0
    end

    index = -2

    while carryover > 0
        if digits[index]
            digits[index] += 1
        else
            digits.unshift(1)
        end

        if digits[index] == 10
            carryover = 1
            digits[index] = 0
        else
            carryover = 0
        end

        index -= 1
    end

    digits
end

# p plus_one([1,2,3])
# p plus_one([1,2,9])
# p plus_one([9])
p plus_one([9, 9])
