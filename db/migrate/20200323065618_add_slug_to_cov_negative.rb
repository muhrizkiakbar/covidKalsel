class AddSlugToCovNegative < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_negatives, :slug, :string
    add_index :cov_negatives, :slug, unique: true
  end
end
