def stock_picker(array)
    values = []
    buy = 0
    sell = 0
    cost = 0

    array.each_with_index do | buy_price, buy_index|
        array.each_with_index do | sell_price, sell_index|
            if buy_index < sell_index
                if sell_price - buy_price > cost
                    cost = sell_price - buy_price
                    buy = buy_index
                    sell = sell_index
                end
            end
        end
    end
    values.push(buy)
    values.push(sell)
    values
end

stock_picker([17,3,6,9,15,8,6,1,10])

    