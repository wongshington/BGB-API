# == Schema Information
#
# Table name: topics
#
#  id    :bigint           not null, primary key
#  topic :string
#
FactoryBot.define do
  factory :topic do
    topic { "MyString" }
  end
end
