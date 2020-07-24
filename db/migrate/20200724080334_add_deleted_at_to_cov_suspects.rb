class AddDeletedAtToCovSuspects < ActiveRecord::Migration[5.2]
  def change
    add_column :cov_suspects, :deleted_at, :datetime
    add_index :cov_suspects, :deleted_at
  end
end
