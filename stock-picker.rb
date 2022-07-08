def stock_picker(prices)
    result = Hash.new(0)
    prices.each_with_index do |buy_price, index|
      prices[index..].each do |sell_price|
         sell_price - buy_price
      end
    end   
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])