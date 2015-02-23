@prods = Spree::Variant.where(vendor_id: nil)
@prods.each do |vendor|
  puts vendor.total_on_hand
end