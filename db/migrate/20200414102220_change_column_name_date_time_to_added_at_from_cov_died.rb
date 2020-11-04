class ChangeColumnNameDateTimeToAddedAtFromCovDied < ActiveRecord::Migration[5.2]
  def change
    rename_column :cov_dieds, :dateTime, :added_at
  end
end
