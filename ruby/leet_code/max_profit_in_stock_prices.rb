def max_profit(prices)
    # We need to have at least 2 el in order to have a difference
    if prices.length < 2
       return 0
    end

    # We keep track of both the minimum element, and the maximum difference we have found
    minimum_el = prices[0]
    max_diff = prices[1] - prices[0]

    prices.each do |price|
      # If the current price minus the current minimum is greater than the max diff set it
       if price - minimum_el > max_diff
           max_diff = price - minimum_el
       end

       # Update the minimum element if necessary
      if price < minimum_el
          minimum_el = price
      end
    end

    return max_diff
end
