@vars = Spree::Variant.all
     # vendor = Spree::Vendor.find_by_vendorname(row[1])
     # v.vendor_id = vendor.id
     # v.save!

@vars.each do |var|
var.vendor_id = 5
  var.save!
end