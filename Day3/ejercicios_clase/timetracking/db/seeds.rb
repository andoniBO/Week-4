Project.create(name: "Ironhack", description: "Ou yeah")

(1..10).each do |time|
  p = Project.create(name: "Project #{time}", description: "lala")
  loops = rand(1..5)
  loops.times.each do |loop|
    p.time_entries.create(hours: rand(1..10), minutes: (1..60), comment: "comentario", date: Time.new)
  end
end

10.times.each do |time|
  Project.create(name:"Work #{time}", description: "yeah")
end



puts "Projects created"
