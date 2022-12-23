# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Faker::Config.locale = :ru
50.times do
    @genres = ["Роман", "Поэзия", "Фэнтези", "Детектив", "Триллер", "Биография", "Комикс", "Пьеса", "Рассказ", "Для детей", "Романтика"]
    @name = Faker::Commerce.product_name
    @author = Faker::Book.author
    @author_email = Faker::Lorem.word + '@example.com'
    @year = rand(2010..2022)
    @genre = @genres.sample
    @description = "Автор еще не добавил описание"
    @content = ''
    rand(1..500).times do
        @content.concat(Faker::Lorem.paragraph)
    end
    @language = 'English'
    Book.create(genre: @genre, name: @name, author: @author, year: @year, description: @description, content: @content, language: @language, author_email: @author_email)
end