require 'csv'
require 'net/ftp'
require 'sendgrid-ruby'
require 'mail'

unupdatable = ""
 
CSV.foreach("prodwithoutvendor.csv") do |row| 
    begin
      puts "Updating Vendor for product: #{row[1]}"
      v = Spree::Variant.find(row[0])
      vendor = Spree::Vendor.find_by_vendorname(row[1])
      v.vendor_id = vendor.id
      v.save!
    rescue
      unupdatable = unupdatable + "Could not update vendor for product: #{row[1]}"
      unupdatable = unupdatable + "\n"
    end
  end

puts ""
puts "Update Completed"
puts unupdatable

ErrorMailer.error_email(unupdatable).deliver

puts "Email sent"

#Things to implement
# 1. If loop to, 0 out negative qty from csv file
# 2. If sku cannont be found then catch error