# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin = User.create(email: 'admin@gmail.com',
                   password: 'password',
                   password_confirmation: 'password',
                   role: 'admin')
User.create(email: 'user@gmail.com',
            password: 'password',
            password_confirmation: 'password')
User.create(email: 'user2@gmail.com',
            password: 'password',
            password_confirmation: 'password')
admin.joined_rooms << Room.create(name: 'General', is_private: false)
admin.joined_rooms << Room.create(name: 'Testing', is_private: false)
