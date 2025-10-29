def stock_picker (prices)
    res = [0,0]
    i = 0
    j = 0
    profit = 0

    while j<prices.length do
        if prices[j]<prices[i]
            i = j
        elsif prices[j]>prices[i]
            if profit < prices[j] - prices[i]
                profit = prices[j] - prices[i]
                res[0]=i
                res[1]=j
            end
        end
        j+=1
    end
    res
end

p stock_picker([17,3,6,9,15,8,6,1,10])