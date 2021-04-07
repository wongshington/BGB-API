# == Schema Information
#
# Table name: topics
#
#  id    :integer          not null, primary key
#  topic :string
#
FactoryBot.define do
  factory :topic do
    topic { "MyString" }
  end
end
