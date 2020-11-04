class CreateCovSuspects < ActiveRecord::Migration[5.2]
  def change
    create_table :cov_suspects do |t|
      t.references :city, foreign_key: true
      t.integer :amount
      t.datetime :added_at

      t.timestamps
    end
  end
end
