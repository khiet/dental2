class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.integer :title_id
      t.string :firstname
      t.string :lastname
      t.string :gdc
      t.integer :job_id
      t.string :availability
      t.text :description

      t.timestamps
    end

    add_index :workers, :job_id
    add_index :workers, :title_id
  end
end
