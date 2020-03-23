class AddDeletedAtToCovPositive < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_positives, :deleted_at, :datetime
    add_index :cov_positives, :deleted_at
  end
end
