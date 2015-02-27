require 'csv'
n = 1
 
unupdatable = ""
 
CSV.foreach('vendoritems.csv', :headers => true) do |row| 
    begin
      puts "Updating vendor for Item: #{row[4]}"
      v = Spree::Variant.find_by_barcode(row[5])
      vendor = Spree::Vendor.find_by_vendorname(row[1])
      v.vendor_id = vendor.id
      v.save!
      
    rescue
      unupdatable = unupdatable + "Could not update Stock for sku: #{row[4]}"
      unupdatable = unupdatable + "\n"
    end
  end

puts ""
puts "Update Completed"
puts unupdatable
