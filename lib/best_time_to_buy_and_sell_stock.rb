def max_profit(prices)
  return 0 if prices.length <= 1
  max_profit = 0
  max_future_price, max_future_price_index = prices[1..].each_with_index.max

  prices[0..-2].each_with_index do |price1, i|
    next if price1 >= prices[i+1]
    
    if i >= max_future_price_index
      price_index_pair = prices[i+1..].each_with_index.max
      max_future_price = price_index_pair[0]
      max_future_price_index = price_index_pair[1]+i+1
    end

    if max_future_price - price1 > max_profit
      max_profit = max_future_price - price1
    end
  end

  max_profit
end