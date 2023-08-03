# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Create some shares


genres = ['Bongo', 'Dancehall', 'Hip-Hop', 'Jazz', 'Classical', 'Gospel', 'Country', 'R&B', 'Reggae', 'Riddims']

# Seed200 musics
200.times do
  Music.create!(
    title: Faker::Music::Prince.song,
    avatar: Faker::LoremFlickr.image(size: "300x300", search_terms: ['music']),
    genre: genres.sample,
    album: Faker::Music.band,
    video: "https://www.youtube.com/watch?v=#{Faker::Alphanumeric.alpha(number: 11)}"
  )
end