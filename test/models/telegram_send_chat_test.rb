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
require 'test_helper'

class TelegramSendChatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
