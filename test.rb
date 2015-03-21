puts "Starting vendor export"

require 'csv'

vars = Spree::Variant.all

CSV.open("prodwithoutvendor.csv", "wb") do |csv|
vars.each do |var|
  csv << [var.id, var.name, var.barcode, var.vendor_id]
end
end