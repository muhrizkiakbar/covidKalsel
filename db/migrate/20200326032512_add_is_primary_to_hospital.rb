class AddIsPrimaryToHospital < ActiveRecord::Migration[5.2]
  def change
    add_column :hospitals, :is_primary, :boolean
  end
end
