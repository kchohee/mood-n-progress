# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

users = []

10.times do
    User.create do |u|
        u.name = Faker::GreekPhilosophers.name
        u.email = Faker::Internet.email
        u.password_digest = Faker::Internet.password
        users << u
    end
end

test = User.create(name: "Cho", email: "test@test.com", password_digest: "test")