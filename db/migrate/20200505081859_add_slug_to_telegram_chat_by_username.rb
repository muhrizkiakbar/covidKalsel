class AddSlugToTelegramChatByUsername < ActiveRecord::Migration[5.2]
  def change
    add_column :telegram_chat_by_usernames, :slug, :string
    add_index :telegram_chat_by_usernames, :slug, unique: true
  end
end
