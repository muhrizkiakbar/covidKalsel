class SendMessageToAllUserTelegramJob  
  def perform(message)
      TelegramChatByUsername.all.each do |telegram|
        SendMessageTelegramJob.new.perform(telegram.chat_id,message)
      end
  end
end
