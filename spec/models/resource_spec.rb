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

require 'rails_helper'

describe Resource do
  describe 'validation' do
    it 'ensures mandatory fields are present' do
      resource = Resource.new
      expect(resource.save).to be(false)
      expect(resource.errors[:region]).not_to be_nil
      expect(resource.errors[:resource]).not_to be_nil
      expect(resource.topics).not_to be_nil
    end

  end
end




# require 'rails_helper'

# RSpec.describe Resource, :type => :model do
#   describe "Associations" do
#     it { should have_many(:topics) }
#   end

# #   describe "Validations" do
# #     it { should validate_presence_of(:bidder) }
# #   end
# end


# require 'spec_helper'

# describe Resource do

#   describe "ActiveRecord associations" do
#     # Associations
#     it {expect(resource).to have_many(:topics)}
#     it {expect(topic).to belong_to(:resource)}

#     # it { expect(profile).to belong_to(:user) }
#     # it { expect(user).to have_one(:profile }
#     # it { expect(classroom).to have_many(:students) }

#     # Databse columns/indexes
#     # # http://rubydoc.info/github/thoughtbot/shoulda-matchers/master/Shoulda/Matchers/ActiveRecord/HaveDbColumnMatcher
#     # it { expect(user).to have_db_column(:political_stance).of_type(:string).with_options(default: 'undecided', null: false)
#   end

# end

