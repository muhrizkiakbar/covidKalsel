class CreateTelegramSendChats < ActiveRecord::Migration[5.2]
  def change
    create_table :telegram_send_chats do |t|
      t.bigint :chat_id
      t.text :message

      t.timestamps
    end
  end
end
