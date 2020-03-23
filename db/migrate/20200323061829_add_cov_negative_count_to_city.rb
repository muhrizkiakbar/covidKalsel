class AddCovNegativeCountToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :cov_negative_count, :integer
  end
end
