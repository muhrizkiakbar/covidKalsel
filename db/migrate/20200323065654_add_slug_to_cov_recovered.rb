class AddSlugToCovRecovered < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_recovereds, :slug, :string
    add_index :cov_recovereds, :slug, unique: true
  end
end
