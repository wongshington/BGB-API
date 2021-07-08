# == Schema Information
#
# Table name: resources
#
#  id          :bigint           not null, primary key
#  address     :string
#  description :string
#  distance    :float
#  hours       :string
#  notes       :string
#  phone       :string
#  region      :string
#  resource    :string
#  website     :string
#
class Resource < ApplicationRecord
  has_many :connectors
  has_many :topics, through: :connectors
end
