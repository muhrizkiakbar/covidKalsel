class AddSlugToCovPdp < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_pdps, :slug, :string
    add_index :cov_pdps, :slug, unique: true
  end
end
