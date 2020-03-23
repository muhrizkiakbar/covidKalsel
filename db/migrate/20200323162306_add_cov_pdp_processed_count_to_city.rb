class AddCovPdpProcessedCountToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :cov_pdp_processed_count, :integer, null: false, default: 0
  end
end
