class CreateInfoPractices < ActiveRecord::Migration[5.2]
  def change
    create_table :info_practices do |t|
      t.attachment :image_content
      t.timestamps
    end
  end
end
