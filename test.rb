@tpois = Spree::TempPo.where(po_id: 47)
# vendor = Spree::Vendor.find_by_vendorname(row[1])
     # v.vendor_id = vendor.id
     # v.save!

@tpois.each.with_index do |var|
  puts var.var_id
  @variant = Spree::Variant.find(var.var_id)
  puts @variant.name
end
