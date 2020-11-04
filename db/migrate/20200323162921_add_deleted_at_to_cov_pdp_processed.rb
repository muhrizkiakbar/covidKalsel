class AddDeletedAtToCovPdpProcessed < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_pdp_processeds, :deleted_at, :datetime
    add_index :cov_pdp_processeds, :deleted_at
  end
end
