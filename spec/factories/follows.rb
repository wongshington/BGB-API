# == Schema Information
#
# Table name: follows
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  followee_id :integer          not null
#  follower_id :integer          not null
#
# Indexes
#
#  index_follows_on_follower_id_and_followee_id  (follower_id,followee_id) UNIQUE
#
FactoryBot.define do
  factory :follow do
    
  end
end