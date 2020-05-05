class AddDeletedAtToTelegramSendChat < ActiveRecord::Migration[5.2]
  def change
    add_column :telegram_send_chats, :deleted_at, :datetime
    add_index :telegram_send_chats, :deleted_at
  end
end
