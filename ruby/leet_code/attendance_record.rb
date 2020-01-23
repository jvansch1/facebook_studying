def check_record(s)
    a_count = 0
    continuous_l_count = 0
    max_continuous_l_count = 0
    last_seen = nil

    index = 0

    while index < s.length
        if s[index] == "A"
            a_count += 1
        elsif s[index] == "L"
            if last_seen == "L"
              continuous_l_count += 1

              if continuous_l_count > max_continuous_l_count
                max_continuous_l_count = continuous_l_count
              end
            else
              continuous_l_count = 1
            end
        else
          continuous_l_count = 0
        end
        last_seen = s[index]
        index += 1
    end

    return a_count < 2 && max_continuous_l_count < 3
end

p check_record("PPALLP")
p check_record("PPALLL")
p check_record("PLLPALL")
p check_record("LLLALL")
