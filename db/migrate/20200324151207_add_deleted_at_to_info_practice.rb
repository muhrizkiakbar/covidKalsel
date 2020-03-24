class AddDeletedAtToInfoPractice < ActiveRecord::Migration[5.2]
  def change
    add_column :info_practices, :deleted_at, :datetime
    add_index :info_practices, :deleted_at
  end
end
