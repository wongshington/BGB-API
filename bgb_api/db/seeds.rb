# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

user1 = User.create({ 
    email: 'test1@test.com', 
    password: 'password', 
    dob: Date.new(2015, 12, 8),
})

user2 = User.create({ 
    email: 'test2@test.com', 
    password: 'password', 
    dob: Date.new(1988, 4, 4),
})
