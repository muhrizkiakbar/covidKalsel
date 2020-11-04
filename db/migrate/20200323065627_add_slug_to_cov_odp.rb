class AddSlugToCovOdp < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_odps, :slug, :string
    add_index :cov_odps, :slug, unique: true
  end
end
