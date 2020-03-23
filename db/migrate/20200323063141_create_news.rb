class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.references :user, foreign_key: true
      t.string :tittle
      # t.text :content
      t.column :content, :longtext, null: false

      t.timestamps
    end
  end
end
