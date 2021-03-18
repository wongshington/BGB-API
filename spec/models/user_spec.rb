# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  date_of_birth          :date             not null
#  email                  :string           not null
#  encrypted_password     :string           not null
#  failed_attempts        :integer          default(0), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  location               :string
#  locked_at              :datetime
#  name                   :string           not null
#  provider               :string           default("email"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  tokens                 :json
#  uid                    :string           default(""), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#
require 'rails_helper'

describe User do

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:date_of_birth) }
  

  # describe 'validation' do
  #   it 'ensures mandatory fields are present' do
  #     user = User.new 
  #     expect(user.save).to be(false)

  #     expect(user.errors[:email]).not_to be_nil
  #     expect(user.errors[:name]).not_to be_nil
  #     expect(user.errors[:encrypted_password]).not_to be_nil
  #     expect(user.errors[:date_of_birth]).not_to be_nil
  #   end

  #   it 'ensures email uniqueness' do
  #     user1 = create(:user, email: "myuser@example.com")
  #     user2 = build(:user, email: "myuser@example.com")

  #     expect(user2.save).to be(false)
  #     expect(user2.errors[:email]).not_to be_nil
  #   end

  # end
end
