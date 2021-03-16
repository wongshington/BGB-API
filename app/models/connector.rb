# == Schema Information
#
# Table name: connectors
#
#  id             :integer          not null, primary key
#  resource_id_id :integer
#  topic_id_id    :integer
#
# Indexes
#
#  index_connectors_on_resource_id_id  (resource_id_id)
#  index_connectors_on_topic_id_id     (topic_id_id)
#
class Connector < ApplicationRecord
  belongs_to :resource
  belongs_to :topic
end
