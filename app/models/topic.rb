# == Schema Information
#
# Table name: topics
#
#  id    :bigint           not null, primary key
#  topic :string
#
class Topic < ApplicationRecord
  has_many :connectors
  has_many :resources, through: :connectors
end
