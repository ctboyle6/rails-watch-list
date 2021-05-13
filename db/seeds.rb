# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning db....'

Movie.destroy_all

puts 'all clean!'

puts 'adding some new movies...'

6.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Fillmurray.image,
    rating: rand(10)
  )
  puts "Movie #{movie.id} created"
end

puts 'all done!'
