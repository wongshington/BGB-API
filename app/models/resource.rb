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
#
class Resource < ApplicationRecord
  has_many :connectors
  has_many :topics, through: :connectors
end
