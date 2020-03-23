class AddSlugToCovPositive < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_positives, :slug, :string
    add_index :cov_positives, :slug, unique: true
  end
end
