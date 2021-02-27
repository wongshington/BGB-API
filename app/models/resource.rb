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
class Resource < ApplicationRecord
  has_many :connectors
  has_many :topics, through: :connectors
end
