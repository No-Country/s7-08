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
                   role: 'admin',
                   username: 'Rodrigo')
User.create(email: 'user@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            username: 'Franco')
User.create(email: 'user2@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            username: 'Milton')
User.create(email: 'user3@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            username: 'Leandro')
User.create(email: 'user4@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            username: 'Paulo')   
User.create(email: 'user5@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            username: 'Enzo')        
User.create(email: 'user6@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            username: 'Nacho')  
User.create(email: 'user7@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            username: 'Rodri')    
User.create(email: 'user8@gmail.com',
            password: 'password',
            password_confirmation: 'password',
            username: 'Lucas')                                               
admin.joined_rooms << Room.create(name: 'General', is_private: false)
admin.joined_rooms << Room.create(name: 'Testing', is_private: false)
