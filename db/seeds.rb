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

blm = Topic.create(topic: "BLM")
lgbtq = Topic.create(topic: "LGBTQ+")
legal = Topic.create(topic: "Legal")
physical_health = Topic.create(topic: "Physical Health")
mental_wellbeing = Topic.create(topic: "Mental Wellbeing")
immediate_danger = Topic.create(topic: "Immediate Danger")
domestic_issues = Topic.create(topic: "Domestic Issues")
general = Topic.create(topic: "General")

#topics = ["Legal", "Physical Health", "Mental Wellbeing", "Immediate Danger", "Domestic Issues", "General"]
#topics.each do |name, t|
#Topic.create(topic: t)
#end

#one way to do it
Connector.destroy_all

connector1 = Connector.new(
    #resource_id_id: resource1.id,
    #topic_id_id: topic2.id
    resource: resource1,
    #resource_id_id: resource1.id,
    topic: legal
)
connector1.save!

#lgbtq = Topic.where(topic: "LGBTQ+")
#physical_health = Topic.where(topic: "Physical Health")
#resource2.topics = [Topic.where(topic: "Immediate Danger").first, Topic.where(topic: "Physical Health").first]

#better way to do it
resource1.topics = [blm, legal, general]
resource2.topics = [immediate_danger, mental_wellbeing, legal]

