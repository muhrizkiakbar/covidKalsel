class AddCovPositiveCountToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :cov_positive_count, :integer, default: 0
  end
end
