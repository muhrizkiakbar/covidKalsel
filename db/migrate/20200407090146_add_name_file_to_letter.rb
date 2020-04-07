class AddNameFileToLetter < ActiveRecord::Migration[5.2]
  def change
    add_column :letters, :name_file, :string
  end
end
