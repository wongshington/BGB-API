FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    sequence(:email) { |n| "person#{n}@example.com" }
    date_of_birth { Faker::Date.between(from: 18.years.ago, to: 40.years.ago)}
    location { Faker::Address.city }
    password { 'password' }
    password_confirmation { 'password' }
  end
end