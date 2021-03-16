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
require 'rails_helper'

RSpec.describe Connector, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
