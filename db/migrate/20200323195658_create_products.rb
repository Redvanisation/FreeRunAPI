class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image
      t.string :category
      t.integer :stock

      t.timestamps
    end
  end
end
