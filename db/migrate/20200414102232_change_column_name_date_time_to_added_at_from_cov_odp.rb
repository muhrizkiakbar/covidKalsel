class ChangeColumnNameDateTimeToAddedAtFromCovOdp < ActiveRecord::Migration[5.2]
  def change
    rename_column :cov_odps, :dateTime, :added_at
  end
end
