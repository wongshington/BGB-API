# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

user1 = User.new(
  uid: 135,
  name: 'User 1',
  email: 'test1@test.com',
  password: 'password',
  password_confirmation: 'password',
  date_of_birth: Date.new(2015, 12, 8)
)
user1.skip_confirmation!
user1.save!

user2 = User.new(
  uid: 136,
  name: 'User 2',
  email: 'test2@test.com',
  password: 'password',
  password_confirmation: 'password',
  date_of_birth: Date.new(1988, 4, 4)
)
user2.skip_confirmation!
user2.save!

Resource.destroy_all

resource1 = Resource.new(
    resource: "isabel",
    description: "is dumb",
    phone: "(123) 456 - 7890", #will need to be changed later to call phone number
    hours: "8:00am - 5:00pm",
    distance: 4.5
)

resource2 = Resource.new(
    resource: "natasha",
    description: "is notdumb",
    phone: "(321) 456 - 7890", #will need to be changed later to call phone number
    hours: "4:00pm - 5:00pm",
    distance: 6.9
)
resource1.save!
resource2.save!

Topic.destroy_all

topic1 = Topic.new(
    topic: "BLM"
)

topic2 = Topic.new(
    topic: "LGBTQ+"
)

topic1.save!
topic2.save!

topics = ["Legal", "Physical Health", "Mental Wellbeing", "Immediate Danger", "Domestic Issues", "General"]
topics.each do |t|
  Topic.create(topic: t)
end