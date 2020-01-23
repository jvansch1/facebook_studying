example = "{(([])[])[]]}"

def isBalanced(s)
    stack = []

    pairs = {
        "{" => "}",
        "[" => "]",
        "(" => ")",
    }

    s.split("").each do |char|
        p "Character: #{char}"
        if pairs.keys.include?(char)
            stack << char
        elsif pairs.values.include?(char) && pairs[stack[-1]] == char
            stack.pop
        end
        p "Current Stack: #{stack}"
    end

    if stack.empty?
        return "YES"
    else
        return "NO"
    end
end

isBalanced(example)
