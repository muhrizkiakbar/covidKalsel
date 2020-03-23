class AddCovPdpCountToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :cov_pdp_count, :integer
  end
end
