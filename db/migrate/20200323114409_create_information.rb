class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.references :user, foreign_key: true
      t.string :tittle
      t.text :content

      t.timestamps
    end
  end
end
