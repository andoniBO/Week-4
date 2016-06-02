10.times.each_with_index do |time,index|
  User.create(name:"User #{time}", email: "yeah#{index}@mail.com")
end



puts "Users created"
