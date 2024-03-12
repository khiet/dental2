class AddQualificationToWorkers < ActiveRecord::Migration[7.0]
  def change
    add_column :workers, :qualification, :string
  end
end
