FactoryBot.define do
  factory :user do
    uid {117}
    name {'User 1'}
    email {'test1@test.com'}
    password {'password'}
    password_confirmation {'password'}
    date_of_birth {Date.new(2015, 12, 8)}
    # Add additional fields as required via your User model
    
  end


  # an example of different user types
  # factory :admin do
  #   uid {117}
  #   name {'User 1'}
  #   email {'test1@test.com'}
  #   password {'password'}
  #   password_confirmation {'password'}
  #   date_of_birth {Date.new(2015, 12, 8)}
  #   admin {true}
  #   # Add additional fields as required via your User model
    # end
  end