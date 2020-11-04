class AddDeletedAtToCovNegative < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_negatives, :deleted_at, :datetime
    add_index :cov_negatives, :deleted_at
  end
end
