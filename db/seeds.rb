require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


11.times do |n|
  User.create({
    email: Faker::Internet.unique.email,
    password: 'password'
  })
end

p "Created #{User.count} users"

users = User.all

users.each do |user|
  UserProfile.create({
    user_id: user.id,
    name: Faker::Name.unique.name,
    social: Faker::Internet.url(host: 'twitter.com'),
    intro: Faker::TvShows::DumbAndDumber.quote
  })
end

p "Created #{UserProfile.count} profiles"

users.each do |user|
  rand(3..11).times do |n|
    Rec.create({
      user_id: user.id,
      title: Faker::Commerce.product_name,
      link: Faker::Internet.url,
      description: Faker::Marketing.buzzwords
    })
  end
end

p "Created #{Rec.count} recs"
