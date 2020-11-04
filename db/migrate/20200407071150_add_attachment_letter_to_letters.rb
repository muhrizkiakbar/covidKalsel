class AddAttachmentLetterToLetters < ActiveRecord::Migration[5.2]
  def self.up
    change_table :letters do |t|
      t.attachment :letter
    end
  end

  def self.down
    remove_attachment :letters, :letter
  end
end
