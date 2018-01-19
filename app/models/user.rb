class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /@/}

  has_secure_password
  has_many :ratings, dependent: :destroy
  has_many :restaurants
end
