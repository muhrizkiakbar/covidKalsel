class AddSlugToInfoPractices < ActiveRecord::Migration[5.2]
  def change
    add_column :info_practices, :slug, :string
    add_index :info_practices, :slug, unique: true
  end
end
