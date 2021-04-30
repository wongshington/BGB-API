# == Schema Information
#
# Table name: topic_likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_topic_likes_on_user_id_and_topic_id  (user_id,topic_id) UNIQUE
#
FactoryBot.define do
  factory :topic_like do
    
  end
end
