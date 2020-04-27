# == Schema Information
#
# Table name: telegram_send_chats
#
#  id         :bigint           not null, primary key
#  chat_id    :bigint
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TelegramSendChat < ApplicationRecord
end
