# == Schema Information
#
# Table name: guide_likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  guide_id   :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_guide_likes_on_user_id_and_guide_id  (user_id,guide_id) UNIQUE
#
class GuideLike < ApplicationRecord
end
