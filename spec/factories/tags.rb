# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#  tagged_id  :integer          not null
#  tagger_id  :integer          not null
#
# Indexes
#
#  index_tags_on_tagger_id_and_tagged_id_and_post_id  (tagger_id,tagged_id,post_id) UNIQUE
#
FactoryBot.define do
  factory :tag do
    
  end
end
