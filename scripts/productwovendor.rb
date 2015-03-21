puts "Starting vendor export"
require 'csv'

@vars = Spree::Variant.where(vendor_id: nil)

CSV.open("scripts/jsonoutput/prodwithoutvendor.csv", "wb") do |csv|
@vars.each do |var|
 csv << [var.id, var.name, var.barcode, var.vendor_id]
  puts var.name
end
end