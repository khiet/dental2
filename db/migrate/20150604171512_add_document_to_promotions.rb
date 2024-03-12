class AddDocumentToPromotions < ActiveRecord::Migration[7.0]
  def change
    add_column :promotions, :document, :string
  end
end
