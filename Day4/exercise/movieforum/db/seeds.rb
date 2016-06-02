10.times.each do |time|
  Movie.create(title:"Movie #{time}", poster: "poster", year: "#{1990 + Random.rand(10)}", synopsis: "yeah")
end
