class AddWeightToWorker < ActiveRecord::Migration[7.0]
  def up
    add_column :workers, :weight, :integer, default: 0
  end

  def down
    remove_column :workers, :weight
  end
end
