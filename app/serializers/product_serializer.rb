class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :category, :stock, :updated_at

  def updated_at
    object.updated_at.to_date
  end
end
