require 'csv'
n = 1
 
CSV.foreach("import.csv") do |row| 
  if n != 0
   puts "Adding new product: #{row[1]}"
   p = Spree::Product.new()

    p.name = row[0]
    p.description = row[1]
    p.sku = row[3]
    p.price = row[2]
    p.shipping_category_id = "1"
    p.save!
  end
  n += 1
end
 
puts ""
puts "Import Completed - Added: #{n} Products"
