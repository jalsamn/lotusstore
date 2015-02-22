result1 = system("wget --header 'API-AUTHENTICATION: 288c79b9556747d6a66da933720b484a:aecdb2f39e8a4499980dd98a2f083856c547129de799420fa80ed302f51608cd' 'https://lotusmarket.revelup.com/resources/Product/?format=json&limit=5000000000' -O 'scripts/jsonoutput/RevProducts.json'")
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
    if !Spree::Variant.exists?(:revel_id => prod["id"])
      next if prod["establishment"] == "/enterprise/Establishment/2/"
        revinv = Spree::Product.new()
        revinv.name = prod["name"]
        revinv.price = prod["price"]
        revinv.shipping_category_id = "1"
        revinv.available_on = Time.now
        revinv.description = " "
        revinv.save!
        variant = revinv.master
        variant.revel_id = prod["id"] 
        variant.barcode = prod["barcode"] 
        variant.save!
        puts "Added Product for product with id "
        puts variant.revel_id
      
    else
     
        next if prod["establishment"] == "/enterprise/Establishment/2/"
      
          revinv = Spree::Variant.find_by_revel_id(prod["id"])
          revinv.revel_id = prod["id"] 
          revinv.barcode = prod["barcode"] 
          revinv.save!
          puts "Updated product with id "
          puts prod["id"] 
    end  
  rescue 
    puts "Error was #{$?}"
  end
  end

