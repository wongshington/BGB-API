# == Schema Information
#
# Table name: connectors
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Connector < ApplicationRecord
  belongs_to :resource
  belongs_to :topic
end
