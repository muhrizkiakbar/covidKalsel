class ChangeColumnNameDateTimeToAddedAtFromCovPdpProcessed < ActiveRecord::Migration[5.2]
  def change
    rename_column :cov_pdp_processeds, :dateTime, :added_at
  end
end
