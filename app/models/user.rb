class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :stocks, dependent: :destroy

  validates :username, presence: true
end
