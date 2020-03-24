class Product < ApplicationRecord
  has_many :users, through: :orders
  
  has_and_belongs_to_many :orders
  

  validates_presence_of :name, :description, :price, :image, :quantity, :category
end
