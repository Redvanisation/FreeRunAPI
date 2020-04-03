class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :address, :admin, :updated_at

  def updated_at
    object.updated_at.to_date
  end
end
