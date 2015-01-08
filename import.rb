require 'csv'
n = 1
 
CSV.foreach("import.csv") do |row| 
  if n != 0
   puts "Adding new product: #{row[3]}"
   p = Spree::Product.new()

    p.name = row[3]
    p.description = row[0]
    p.sku = row[7]
    p.price = row[5]
    p.shipping_category_id = "1"
    p.available_on = Time.now
    p.save!
  end
  n += 1
end
 
puts ""
puts "Import Completed - Added: #{n} Products"
