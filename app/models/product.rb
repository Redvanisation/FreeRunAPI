class Product < ApplicationRecord
  has_many :users, through: :orders
  
  has_and_belongs_to_many :orders

  has_one_attached :image
  

  validates_presence_of :name, :description, :image, :price, :stock, :category
end
