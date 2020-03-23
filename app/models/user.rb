class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders

  has_secure_password

  validates_presence_of :username, :email, :password_digest, :address
end
