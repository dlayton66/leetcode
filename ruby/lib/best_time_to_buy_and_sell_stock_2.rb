def max_profit(prices)
  return 0 if prices.length <= 1
  total_profit = 0
  buy_price = 0
  hold = false

  prices[..-2].each_with_index do |price, i|
    if hold == false && prices[i+1] > price
      buy_price = price
      hold = true
    elsif hold == true && prices[i+1] < price
      total_profit += price - buy_price
      hold = false
    end
  end

  total_profit += prices[prices.length-1] - buy_price if hold == true

  total_profit
end