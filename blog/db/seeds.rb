# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#10.times do |index|
#  user = User.create!(first_name: Faker::Color.color_name, last_name: Faker::Color.color_name, email: Faker::Internet.email)
#end

#5.times do |index|
#  article = Article.create!(user_id: Faker::Number.between(1, 10), category: Faker::Number.between(1, 10), title: Faker::Lorem.word, content: Faker::Lorem.words(4))
#end

#5.times do |index|
#  article = Article.create!(user_id: Faker::Number.between(1, 10), category: Faker::Number.between(1, 10), title: Faker::Lorem.word, content: Faker::Lorem.words(3))
#end

#10.times do |index|
#  category = Category.create!(name: Faker::StarWars.planet)
#end

#10.times do |index|
#  comment = Comment.create!(user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10), content: Faker::StarWars.quote)
#end

#5.time do |index|
#  comment = Comment.create!(user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10), content: Faker::Food.fruits)
#end

#2.time do |index|
#  like = Like.create!(user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10))
#end

#3.time do |index|
#  like = Like.create!(user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10))
#end

#5.time do |index|
#  like = Like.create!(user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10))
#end

require 'faker'

5.times do
  category = Category.create!(name: Faker::Job.field)
end


10.times do
  user = User.create!(first_name: Faker::Name.unique.name, last_name:Faker::Name.name,  email: Faker::Internet.email)
end

10.times do
        article = Article.create!(title: Faker::Music.album, content: Faker::Lorem.paragraph, user_id: Faker::Number.between(1, 10), category_id: Faker::Number.between(1, 5))
end

15.times do
        comment = Comment.create!(content: Faker::Lorem.paragraph, user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10))
end

15.times do
        like = Like.create!(user_id: Faker::Number.between(1, 10), article_id: Faker::Number.between(1, 10))
end
