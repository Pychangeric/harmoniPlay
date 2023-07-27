# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Create some shares
Share.create(platform: 'Twitter', share_url: 'https://twitter.com/')
Share.create(platform: 'Facebook', share_url: 'https://facebook.com/')
Share.create(platform: 'WhatsApp', share_url: 'https://whatsapp.com/')


music = Music.create(
  title: "yatapita",
  avatar: "https://9flavour.com/wp-content/uploads/2023/04/Diamond-Platnumz-Yatapita-OFC.jpg",
  genre: "Bongo",
  album: "Diamond platnumz",
  video: "https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmFKTkJVd0ZDZGc4ZlY2SGtsVV9CZnRoVzBjQXxBQ3Jtc0traXR0RnZ2cTRjWThfeFhRTDJsRjRlTzdMRUM5T1FmTWNtMVZONE91dzctTWl5YUMyRFdHRHpKUXNCTVZsaHFFLXhlQmxEX3JsMzV4OWhDWmlLTHdIMlJYNDRrZ2c3aXp3Q3lNSy1KeDJBVUxlT0hUbw&q=https%3A%2F%2Fdplatnumz.lnk.to%2Fyatapita&v=U6JBZNAkp24"
)
