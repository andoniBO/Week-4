(1..10).each do |time|
  Contact.create(name: "Contact #{time}", address: "-", phone_number: "-", email: "-")
end

puts "Contacts created"
