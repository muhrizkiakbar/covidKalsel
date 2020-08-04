class TelegramChatController < ApplicationController
  def index_chat
    @telegram_chat_by_usernames = TelegramChatByUsername.all.page(params[:page])
  end

  def index_send_chat
    @telegram_send_chats = TelegramSendChat.all.order('created_at DESC').page(params[:page])
  end

  def new_message
    @telegram_send_chat = TelegramSendChat.new
  end

  def send_message
    #TelegramChatByUsername.all.each do |telegram_user|
    #  Telegram.bot.send_message(chat_id: telegram_user.chat_id.to_i, text: params[:telegram_send_chat][:message])
    #  @telegram_send_chat = TelegramSendChat.new
    #  @telegram_send_chat.chat_id = telegram_user.chat_id
    #  @telegram_send_chat.message = params[:telegram_send_chat][:message]
    #  @telegram_send_chat.save
    #end
    
    SendMessageToAllUserTelegramJob.new.perform(params[:telegram_send_chat][:message])

    redirect_to telegram_messages_path, notice: 'Message was successfully created.'
  end
  
  private


    def message_params
      params.require(:telegram_send_chat).permit(:message)

    end
end
