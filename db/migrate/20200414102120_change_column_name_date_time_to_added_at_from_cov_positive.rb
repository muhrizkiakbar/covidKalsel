class ChangeColumnNameDateTimeToAddedAtFromCovPositive < ActiveRecord::Migration[5.2]
  def change
    rename_column :cov_positives, :dateTime, :added_at
  end
end
