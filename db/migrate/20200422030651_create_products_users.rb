class CreateProductsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :products_users do |t|
      t.integer "product_id"
      t.integer "user_id"
    end
    add_index("products_users", ["product_id", "user_id"], unique: true)
  end
end
