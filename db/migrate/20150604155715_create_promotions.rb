class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end
end
