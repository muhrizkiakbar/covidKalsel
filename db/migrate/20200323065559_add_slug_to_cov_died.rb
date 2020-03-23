class AddSlugToCovDied < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_dieds, :slug, :string
    add_index :cov_dieds, :slug, unique: true
  end
end
