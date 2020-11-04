class AddSlugToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :slug, :string
    add_index :information, :slug, unique: true
  end
end
