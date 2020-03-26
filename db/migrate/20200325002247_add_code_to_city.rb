class AddCodeToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :code, :string
  end
end
