class AddSlugToCovPdpProcessed < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_pdp_processeds, :slug, :string
    add_index :cov_pdp_processeds, :slug, unique: true
  end
end
