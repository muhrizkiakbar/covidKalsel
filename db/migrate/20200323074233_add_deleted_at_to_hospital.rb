class AddDeletedAtToHospital < ActiveRecord::Migration[5.2]
  def change
    add_column :hospitals, :deleted_at, :datetime
    add_index :hospitals, :deleted_at
  end
end
