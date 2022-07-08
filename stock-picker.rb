def stock_picker(prices)
    best_days_to_buy_and_sell = Hash.new(0)
    prices.each_with_index do |buy_price, index|
      prices[index..].each do |sell_price|
          best_days_to_buy_and_sell[sell_price - buy_price] = [index, prices.index(sell_price)]
      end
    end  
   best_days_to_buy_and_sell.max_by {|key, value| key}[1]
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])