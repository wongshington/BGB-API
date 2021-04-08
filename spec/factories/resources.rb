# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  address     :string
#  description :string
#  distance    :float
#  hours       :string
#  notes       :string
#  phone       :integer
#  region      :string
#  resource    :string
#  website     :string
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
