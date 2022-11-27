=begin

    ran a loop over the stock_price_array with index and substract the value
    from every element after it and checked if the profit is greater than 
    the recent greatest one if it is greater then change the buy_index
    & sell_index accordingly


=end
rescue => exception
    
end
def stock_picker(stock_price_array)
    stock_price_array_size = stock_price_array.length
    buy_index = 0
    sell_index = 0
    profit = -1
    stock_price_array.each_with_index do |buy_price, buy_indx|
        for sell_indx in (buy_indx+1)..(stock_price_array_size-1) do
            sell_price = stock_price_array[sell_indx]
            if (sell_price-buy_price > profit) 
                profit = sell_price - buy_price
                buy_index = buy_indx
                sell_index = sell_indx
            end
        end
    end
    [buy_index, sell_index]
end

ara = [17,3,6,9,15,8,6,1,10]
p stock_picker(ara)