Project.create(name: "Ironhack", description: "Ou yeah")

(1..10).each do |time|
  Project.create(name: "Project #{time}", description: "lala")
end

puts "Projects created"
