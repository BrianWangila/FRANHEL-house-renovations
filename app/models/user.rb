class User < ApplicationRecord
  has_secure_password

  enum :user_type, { buyer: 0, seller: 1, admin: 2 }

  validates :email, uniqueness: true
  validates :username, uniqueness: true
  validates :phone_number, length: {
    minimum: 10,
    maximum: 13
  }
end
