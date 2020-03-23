class AddSlugToHospital < ActiveRecord::Migration[5.2]
  def change
    add_column :hospitals, :slug, :string
    add_index :hospitals, :slug, unique: true
  end
end
