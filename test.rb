    @vars = Spree::Variant.all 
@vars.each do |vendor|
  puts vendor.barcode
  puts vendor.vendor_id
  puts vendor.total_on_hand
end