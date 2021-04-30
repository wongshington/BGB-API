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
require 'rails_helper'

RSpec.describe Tag, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
