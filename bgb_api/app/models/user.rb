class User < ApplicationRecord
  # Include default devise modules.
  # Others available are: :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable

  validates :name, :encrypted_password, :date_of_birth, presence: true

  validates :email, presence: true, uniqueness: true
end
