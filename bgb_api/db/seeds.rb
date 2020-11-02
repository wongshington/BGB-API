# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

user1 = User.new(
  name: 'User 1',
  email: 'test1@test.com',
  password: 'password',
  password_confirmation: 'password',
  date_of_birth: Date.new(2015, 12, 8)
)
user1.skip_confirmation!
user1.save!

user2 = User.new(
  name: 'User 2',
  email: 'test2@test.com',
  password: 'password',
  password_confirmation: 'password',
  date_of_birth: Date.new(1988, 4, 4)
)
user2.skip_confirmation!
user2.save!
