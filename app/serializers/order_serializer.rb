class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total, :paid, :delivered, :updated_at

  def updated_at
    object.updated_at.to_date
  end
end
