class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.integer :product_category_id

      t.timestamps
    end

    add_index :products, :product_category_id
  end
end
