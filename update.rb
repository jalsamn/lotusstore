require 'csv'
require 'net/ftp'
require 'sendgrid-ruby'

ftp = Net::FTP.new
ftp.connect("lotusdelivery.com",21)
ftp.login("jalsamn","t9zVhn~ckCz4")
ftp.chdir("/public_html")
ftp.passive = true
ftp.getbinaryfile("update.csv", "update.csv")

unupdatable = ""
 
CSV.foreach("update.csv") do |row| 
    begin
      puts "Updating Stock for sku: #{row[0]}"
      v = Spree::Variant.find_by_sku(row[0])
      v.stock_items.find(v).set_count_on_hand(row[1])
    rescue
      unupdatable = unupdatable + "Could not update Stock for sku: #{row[0]}"
      unupdatable = unupdatable + "\n"
    end
  end

puts ""
puts "Update Completed"
puts unupdatable

client = SendGrid::Client.new(api_user: 'jalsamn', api_key: 'krishna1')

email = SendGrid::Mail.new do |m|
  m.to      = 'jalsamn@gmail.com'
  m.from    = 'you@youremail.com'
  m.subject = 'Sending with SendGrid is Fun'
  m.html    = unupdatable
end

client.send(email)


puts "Email sent"

#Things to implement
# 1. If loop to, 0 out negative qty from csv file
# 2. If sku cannont be found then catch error