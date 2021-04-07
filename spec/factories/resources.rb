# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  description :string
#  distance    :float
#  hours       :string
#  phone       :string
#  resource    :string
#
FactoryBot.define do
  factory :resource do
    resource { "MyString" }
    phone { "MyString" }
    description { "MyString" }
    hours { "MyString" }
    distance { 1.5 }
  end
end
