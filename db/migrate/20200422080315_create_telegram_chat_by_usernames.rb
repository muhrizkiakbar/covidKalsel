class CreateTelegramChatByUsernames < ActiveRecord::Migration[5.2]
  def change
    create_table :telegram_chat_by_usernames do |t|
      t.bigint :chat_id
      t.string :first_name
      t.string :username
      t.string :type

      t.timestamps
    end
  end
end
