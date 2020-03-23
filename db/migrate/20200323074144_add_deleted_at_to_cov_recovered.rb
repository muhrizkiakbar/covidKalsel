class AddDeletedAtToCovRecovered < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_recovereds, :deleted_at, :datetime
    add_index :cov_recovereds, :deleted_at
  end
end
