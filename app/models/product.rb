class Product < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders

  validates_presence_of :name, :description, :price, :image, :quantity, :category
end
