# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database ..."
Movie.destroy_all
List.destroy_all

puts "Database clean"
puts "Creating movies ..."

20.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Quote.famous_last_words,
    poster_url: Faker::Internet.url,
    rating: rand(0..5)
  )
  puts "Created movie #{movie.title}"
end

puts "Creating lists ..."

rand(3..5).times do
  list = List.create!(
    name: Faker::Adjective.positive,
  )
  puts "Created list #{list.name}"
end

rand(3..5).times do
  list = List.create!(
    name: Faker::Adjective.negative,
  )
  puts "Created list #{list.name}"
end
