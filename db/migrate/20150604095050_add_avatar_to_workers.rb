class AddAvatarToWorkers < ActiveRecord::Migration[7.0]
  def change
    add_column :workers, :avatar, :string
  end
end
