# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  topic      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Topic < ApplicationRecord
  has_many :connectors
  has_many :resources, through: :connectors
end
