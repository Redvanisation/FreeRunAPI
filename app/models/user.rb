class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders

  has_secure_password

  validates :username, presence: true, length: {maximum: 50}
    
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true, length: {maximum: 255}, format: { with: VALID_EMAIL_REGEX },
  uniqueness: {case_sensitive: false}

  validates_presence_of :password_digest, :address
end
