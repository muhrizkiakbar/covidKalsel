class ChangeColumnNameDateTimeToAddedAtFromCovOdpProcessed < ActiveRecord::Migration[5.2]
  def change
    rename_column :cov_odp_processeds, :dateTime, :added_at
  end
end
