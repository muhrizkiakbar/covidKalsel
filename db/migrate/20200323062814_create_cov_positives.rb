class CreateCovPositives < ActiveRecord::Migration[5.2]
  def change
    create_table :cov_positives do |t|
      t.references :city, foreign_key: true
      t.integer :amount
      t.datetime :dateTime

      t.timestamps
    end
  end
end
