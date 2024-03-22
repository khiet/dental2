class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :message
      t.boolean :consent, default: false, null: false

      t.timestamps
    end
  end
end
