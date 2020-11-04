class AddSlugToTelegramSendChat < ActiveRecord::Migration[5.2]
  def change
    add_column :telegram_send_chats, :slug, :string
    add_index :telegram_send_chats, :slug, unique: true
  end
end
