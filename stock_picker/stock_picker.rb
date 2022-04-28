# @param prices [Array<number>] stock prices array
# @return [Array<number>] array with two indexes for buy and sell
def stock_picker(prices)
  buy = 0
  max_profit = 0
  max_profit_days = [0, 0]
  prices.each_with_index do |price, index|
    buy = index if price < prices[buy]

    if price - prices[buy] > max_profit
      max_profit = price - prices[buy]
      max_profit_days = [buy, index]
    end
  end

  max_profit_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 5, 1, 10])
