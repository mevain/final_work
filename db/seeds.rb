# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Faker::Config.locale = :ru
10.times do
    #@emails = ["new@new.com", "mevain@example.org", "user1@example.org", "user2@example.org", "user3@example.org", "user4@example.org", 
    #"user5@example.org" ]
    #@names = ["new", "mevain", "user1", "user2", "user3", "user4", "user5"]
    @genres = ["Роман", "Поэзия", "Фэнтези", "Детектив", "Триллер", "Биография", "Комикс", "Пьеса", "Рассказ", "Для детей", "Романтика"]
    #@id = rand(1...7)
    @id = 1
    @name = Faker::Book.name
    #@author = @names[@id - 1]
    #@author_email = @emails[@id - 1];
    @author = 'new'
    @author_email = "new@new.com";
    @year = rand(2010..2022)
    @genre = @genres.sample
    @description = "Автор еще не добавил описание"
    @content = ''
    rand(1..500).times do
        @content.concat(Faker::Lorem.paragraph)
    end
    @language = 'English'
    Book.create(genre: @genre, name: @name, author: @author, year: @year, description: @description, content: @content, language: @language, author_email: @author_email, user_id: @id)
end
