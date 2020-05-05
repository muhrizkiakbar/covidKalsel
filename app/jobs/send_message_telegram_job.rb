class SendMessageTelegramJob 
  include Sidekiq::Worker

  def perform(chat_id,message)

    @telegram_send_chat = TelegramSendChat.new
    @telegram_send_chat.chat_id = chat_id
    @telegram_send_chat.message = message
    @telegram_send_chat.save

    Telegram.bot.send_message(chat_id: chat_id, text: message)
  end
end
