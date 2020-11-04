class ChangeColumnNameDateTimeToAddedAtFromCovNegative < ActiveRecord::Migration[5.2]
  def change
    rename_column :cov_negatives, :dateTime, :added_at
  end
end
