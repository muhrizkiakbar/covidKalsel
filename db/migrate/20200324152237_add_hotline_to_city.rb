class AddHotlineToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :hotline, :string
  end
end
