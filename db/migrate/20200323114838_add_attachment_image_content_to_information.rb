class AddAttachmentImageContentToInformation < ActiveRecord::Migration[5.2]
  def self.up
    change_table :information do |t|
      t.attachment :image_content
    end
  end

  def self.down
    remove_attachment :information, :image_content
  end
end
