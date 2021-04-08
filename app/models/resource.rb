# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  address     :string
#  description :string
#  distance    :float
#  hours       :string
#  notes       :string
#  phone       :integer
#  region      :string
#  resource    :string
#  website     :string
#
class Resource < ApplicationRecord
  has_many :connectors
  has_many :topics, through: :connectors
end
