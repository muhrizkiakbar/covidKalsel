class AddDeletedAtToCovOdp < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_odps, :deleted_at, :datetime
    add_index :cov_odps, :deleted_at
  end
end
