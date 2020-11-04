class ChangeColumnNameDateTimeToAddedAtFromCovPdp < ActiveRecord::Migration[5.2]
  def change
    rename_column :cov_pdps, :dateTime, :added_at
  end
end
