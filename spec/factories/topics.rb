# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  topic      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :topic do
    topic { "MyString" }
  end
end
