class CreateOrdersProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :orders_products do |t|
      t.integer "order_id"
      t.integer "product_id"
    end
    add_index("orders_products", ["order_id", "product_id"], unique: true)
  end
end
