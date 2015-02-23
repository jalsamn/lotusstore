result = system("wget --header 'API-AUTHENTICATION: 288c79b9556747d6a66da933720b484a:aecdb2f39e8a4499980dd98a2f083856c547129de799420fa80ed302f51608cd' 'https://lotusmarket.revelup.com/resources/Inventory/?format=json&limit=100' -O 'scripts/jsonoutput/RevInventory.json'")
if result.nil?
  puts "Error was #{$?}"
elsif result
  puts "Grabbed the JSON from Revel!"
end

################### UPDATE / INSERT INVENTORY PART ######################
 json = File.new('scripts/jsonoutput/RevInventory.json', 'r')
  parser = Yajl::Parser.new
  hash = parser.parse(json)

  hash["objects"].each do |prod|
  begin
    v = Spree::Variant.find_by_revel_id(prod["id"])
    v.stock_items.find(v).set_count_on_hand(prod["theoretical_ending_inventory"])
  rescue 
      puts "Could not update Stock for sku: " 
      puts prod["resource_uri"]
  end
  end
