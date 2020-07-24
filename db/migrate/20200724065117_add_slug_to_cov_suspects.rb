class AddSlugToCovSuspects < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_suspects, :slug, :string
    add_index :cov_suspects, :slug, unique: true
  end
end
