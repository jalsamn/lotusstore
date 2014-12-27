require 'csv'
 
CSV.foreach("update.csv") do |row| 
    puts "Updating Stock for sku: #{row[0]}"
    v = Spree::Variant.find_by_sku(row[0])
    v.stock_items.find(v).set_count_on_hand(row[1])
end

puts ""
puts "Update Completed"
    

#Things to implement
# 1. If loop to, 0 out negative qty from csv file
# 2. If sku cannont be found then catch error