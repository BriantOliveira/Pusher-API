class User < ApplicationRecord
  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validates :is_signed_in, inclusion: [true, false]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
