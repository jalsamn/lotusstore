require 'csv'
n = 1
 
CSV.foreach("vendors.csv", :headers => true) do |row| 
  if n != 0
    puts "Adding new Vendor: #{row[1]}"
    p = Spree::Vendor.new()
    p.rvid = row[0]
    p.vendorname = row[1]
    p.contactname = row[2]
    p.email = row[3]
    p.phone = row[4]
    p.address1 = row[5]
    p.city = row[7]
    p.country = row[8]
    p.state = row[9]
    p.zip = row[10]
    p.active = true
    p.save!
  end
  n += 1
end
 
puts ""
puts "Import Completed - Added: #{n} Vendors"
