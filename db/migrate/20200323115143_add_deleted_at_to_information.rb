class AddDeletedAtToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :deleted_at, :datetime
    add_index :information, :deleted_at
  end
end
