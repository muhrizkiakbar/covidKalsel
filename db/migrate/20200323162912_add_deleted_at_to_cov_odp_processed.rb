class AddDeletedAtToCovOdpProcessed < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_odp_processeds, :deleted_at, :datetime
    add_index :cov_odp_processeds, :deleted_at
  end
end
