class CreateCovOdpProcesseds < ActiveRecord::Migration[5.2]
  def change
    create_table :cov_odp_processeds do |t|
      t.references :city, foreign_key: true
      t.integer :amount
      t.datetime :dateTime

      t.timestamps
    end
  end
end
