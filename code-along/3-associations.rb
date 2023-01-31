# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company

puts "there are #{Company.all.count} companies"
puts "There are #{Contact.all.count} contacts"

apple = Company.find_by({"name" => "Apple"})

tim = Contact.new
tim["first_name"] = "Tim"
tim["last_name"] = "Cook"
tim["email"] = "tim@apple.com"
tim["company_id"] = apple["id"]
tim.save

puts "There are #{Contact.all.count} contacts"

# 2. How many contacts work at Apple?

apple_contacts = Contact.where({"company_id" => apple["id"]})

puts apple_contacts.count

# 3. What is the full name of each contact who works at Apple?
