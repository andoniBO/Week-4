(10).times.each do |t|
  Concert.create(
                  artist: "Artist ##{Random.rand(10)}",
                  venue: "Venue ##{Random.rand(10)}",
                  city: "City #{Random.rand(10)}",
                  date: "#{Date.today.to_date + Random.rand(10).day}",
                  price: "#{10 + Random.rand(10)}",
                  description: "Description #{Random.rand(10)}"
                )
end

puts "Concerts created"
