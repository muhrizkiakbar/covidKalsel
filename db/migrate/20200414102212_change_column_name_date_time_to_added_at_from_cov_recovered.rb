class ChangeColumnNameDateTimeToAddedAtFromCovRecovered < ActiveRecord::Migration[5.2]
  def change
    rename_column :cov_recovereds, :dateTime, :added_at
  end
end
