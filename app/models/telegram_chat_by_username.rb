# == Schema Information
#
# Table name: telegram_chat_by_usernames
#
#  id         :bigint           not null, primary key
#  chat_id    :bigint
#  first_name :string
#  username   :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TelegramChatByUsername < ApplicationRecord

    acts_as_paranoid
    

    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged
end
