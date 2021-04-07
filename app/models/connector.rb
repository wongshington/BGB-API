# == Schema Information
#
# Table name: connectors
#
#  id          :integer          not null, primary key
#  resource_id :integer
#  topic_id    :integer
#

class Connector < ApplicationRecord
  belongs_to :resource
  belongs_to :topic
end
