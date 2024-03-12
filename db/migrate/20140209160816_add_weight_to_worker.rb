class AddWeightToWorker < ActiveRecord::Migration[7.0]
  def up
    add_column :workers, :weight, :integer, default: 0

    Worker.all.each_with_index do |worker, index|
      worker.update_column(:weight, index)
    end
  end

  def down
    remove_column :workers, :weight
  end
end
