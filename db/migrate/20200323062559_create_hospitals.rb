class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.references :city, foreign_key: true
      t.string :name_hospital
      t.text :address
      t.string :phone_number

      t.timestamps
    end
  end
end
