class AddCovDiedCountToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :cov_died_count, :integer
  end
end
