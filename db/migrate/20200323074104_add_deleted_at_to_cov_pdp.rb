class AddDeletedAtToCovPdp < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_pdps, :deleted_at, :datetime
    add_index :cov_pdps, :deleted_at
  end
end
