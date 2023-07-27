# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
# Create some users
user1 = User.create(username: 'user1', email: 'user1@example.com', password: 'password1')
user2 = User.create(username: 'user2', email: 'user2@example.com', password: 'password2')
# Create some songs
song1 = Song.create(title: 'Song 1', artist: 'Artist 1', album: 'Album 1', user: user1)
song2 = Song.create(title: 'Song 2', artist: 'Artist 2', album: 'Album 2', user: user2)
# Create some shares
Share.create(platform: 'Twitter', share_url: 'https://twitter.com/song1', user: user1, song: song1)
Share.create(platform: 'Facebook', share_url: 'https://facebook.com/song1', user: user1, song: song1)
Share.create(platform: 'WhatsApp', share_url: 'https://whatsapp.com/song2', user: user2, song: song2)