require 'csv'
n = 1
 
CSV.foreach("prodwithoutvendor.csv") do |row| 
  
   puts "Adding new product: #{row[3]}"
  
end
 