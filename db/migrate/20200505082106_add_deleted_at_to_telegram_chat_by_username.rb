class AddDeletedAtToTelegramChatByUsername < ActiveRecord::Migration[5.2]
  def change
    add_column :telegram_chat_by_usernames, :deleted_at, :datetime
    add_index :telegram_chat_by_usernames, :deleted_at
  end
end
