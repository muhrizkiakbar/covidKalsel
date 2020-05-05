class RenameTypeToKindFromTelegramChatByUsername < ActiveRecord::Migration[5.2]
  def up
    rename_column :telegram_chat_by_usernames, :type, :kind
  end

  def down
    rename_column :telegram_chat_by_usernames, :kind, :type
  end
end
