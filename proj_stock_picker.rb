#this program takes in an array of stock prices for an individual stock 
#and picks the best time to buy and the best time to sell
#an array stating which day to buy and sell will be returned

def stock_picker(prices)
    #results array indicates the best time to buy and then sell the stock
    results = [0, 0]
    #this variable keeps tabs of the best positive price difference
    greatest_price_difference = 0
    prices.each_with_index do |price, current_index|
        #index_counter keeps track of the index in the array as it's being
        #looped in the while loop
        
        index_counter = current_index + 1
        #the while loop loops through the array starting with the first 
        #potential day to buy and compares the potential difference
        #each day going forward to determine which day would be best to sell on
        #should they buy the stock today
        while index_counter < prices.length
            
            price_difference = prices[index_counter] - prices[current_index]
                if price_difference > greatest_price_difference
                    #price difference is updated if a greater difference is found
                    greatest_price_difference = price_difference
                    results[0] = current_index 
                    results[1] = index_counter 
                end
            index_counter += 1
        end
    end



    puts results
end

stock_picker([17,3,6,9,15,8,6,1,10])