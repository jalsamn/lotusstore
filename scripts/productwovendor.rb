puts "Starting vendor export"
require 'csv'

@vars = Spree::Variant.where(vendor_id: nil)

CSV.open("scripts/jsonoutput/prodwithoutvendor.csv", "wb") do |csv|
@vars.each do |var|
 csv << [var.id, var.name, var.barcode, var.vendor_id]
  puts var.name
end
end

########## BEGIN FTP TRANSFER #########

ftp = Net::FTP.new
ftp.connect("lotusdelivery.com",21)
ftp.login("jalsamn","t9zVhn~ckCz4")
ftp.chdir("/public_html")
ftp.passive = true

file = "scripts/jsonoutput/prodwithoutvendor.csv"

ftp.putbinaryfile(file, remotefile = File.basename(file))
ftp.close