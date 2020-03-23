class AddSlugToCovOdpProcessed < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_odp_processeds, :slug, :string
    add_index :cov_odp_processeds, :slug, unique: true
  end
end
