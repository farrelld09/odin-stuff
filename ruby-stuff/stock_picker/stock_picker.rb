class StockPicker
  purchase_date = 0
  sell_date = 0
  current_low,
  current_high,
  max_profit = 0
  
  def self.get_optimal_days (prices)
    current_low = prices[0]
    current_high = prices[0]

    prices.each_with_index do | price, date |
      puts "current_low #{current_low}  current_high #{current_high}"
      # if current_high - price 
    end
  end


end

puts StockPicker.get_optimal_days([17,3,6,9,15,8,6,1,10])
#  [1,4]  # for a profit of $15 - $3 == $12