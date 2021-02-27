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
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
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
