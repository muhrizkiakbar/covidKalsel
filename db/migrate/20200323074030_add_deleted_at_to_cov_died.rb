class AddDeletedAtToCovDied < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_dieds, :deleted_at, :datetime
    add_index :cov_dieds, :deleted_at
  end
end
