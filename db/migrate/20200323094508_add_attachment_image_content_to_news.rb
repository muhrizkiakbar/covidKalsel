class AddAttachmentImageContentToNews < ActiveRecord::Migration[5.2]
  def self.up
    change_table :news do |t|
      t.attachment :image_content
    end
  end

  def self.down
    remove_attachment :news, :image_content
  end
end
