def repeatedString(s, n)
    a_count = s.split('').count { |letter| letter == "a" }
    total_a_count = 0
    length = s.length

    if n % s.length == 0
        total_a_count = a_count * (n / length)
    else
        leftover = n % length
        p "Leftover: #{leftover}"
        total_a_count = (a_count * (n / length)) + s[0...leftover].split('').count { |letter| letter == "a" }
    end

    return total_a_count
end

p repeatedString("aab", 882787)
p repeatedString("aba", 10)
