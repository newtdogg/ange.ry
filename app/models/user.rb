class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true

  has_secure_password validations: false
end
