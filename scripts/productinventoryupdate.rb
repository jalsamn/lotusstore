result = system("wget --header 'API-AUTHENTICATION: 288c79b9556747d6a66da933720b484a:aecdb2f39e8a4499980dd98a2f083856c547129de799420fa80ed302f51608cd' 'https://lotusmarket.revelup.com/resources/Inventory/?format=json&limit=500' -O 'scripts/jsonoutput/RevInventory.json'")
if result.nil?
  puts "Error was #{$?}"
elsif result
  puts "Grabbed the JSON from Revel!"
end

result1 = system("wget --header 'API-AUTHENTICATION: 288c79b9556747d6a66da933720b484a:aecdb2f39e8a4499980dd98a2f083856c547129de799420fa80ed302f51608cd' 'https://lotusmarket.revelup.com/resources/Product/?format=json&limit=500' -O 'scripts/jsonoutput/RevProducts.json'")
if result1.nil?
  puts "Error was #{$?}"
elsif result1
  puts "Grabbed the JSON from Revel!"
end
  
################### UPDATE / INSERT PRODUCT PART ######################
  json = File.new('scripts/jsonoutput/RevProducts.json', 'r')
  parser = Yajl::Parser.new
  hash = parser.parse(json)

  hash["objects"].each do |prod|
  begin
    if !Spree::Variant.exists?(:barcode => prod["barcode"])
      next if prod["establishment"] == "/enterprise/Establishment/2/"
        revinv =Spree::Product.new()
        revinv.name = prod["name"]
        revinv.sku = prod["barcode"]
        revinv.barcode = prod["barcode"]
        revinv.price = prod["price"]
        revinv.shipping_category_id = "1"
        revinv.available_on = Time.now
        revinv.save
        puts "Added Product for product with id "
        puts prod["id"]
      
    else
     
        next if prod["establishment"] == "/enterprise/Establishment/2/"
      
          revinv = Spree::Variant.find_by_barcode(prod["barcode"])
          revinv.name = prod["name"]
          revinv.sku = prod["barcode"]
          revinv.barcode = prod["barcode"]
          revinv.price = prod["price"]
          revinv.shipping_category_id = "1"
          revinv.available_on = Time.now
          revinv.save 
          puts "Updated product with id "
          puts prod["id"] 
    end  
  rescue 
    puts "Error was #{$?}"
  end
  end

################### UPDATE / INSERT INVENTORY PART ######################
 json = File.new('scripts/jsonoutput/RevInventory.json', 'r')
  parser = Yajl::Parser.new
  hash = parser.parse(json)

  hash["objects"].each do |prod|
  begin
    v = Spree::Variant.find_by_barcode(prod["barcode"])
    v.stock_items.find(v).set_count_on_hand(prod["theoretical_ending_inventory"])
  rescue 
      unupdatable = unupdatable + "Could not update Stock for sku: " + prod["barcode"]
      unupdatable = unupdatable + "\n"  
  end
  end
