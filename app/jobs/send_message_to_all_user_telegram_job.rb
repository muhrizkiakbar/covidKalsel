class SendMessageToAllUserTelegramJob < ApplicationJob
  queue_as :default
  def perform(message)
      TelegramChatByUsername.all.each do |telegram|
        SendMessageTelegramJob.new.perform(telegram.chat_id,message)
      end
  end
end
