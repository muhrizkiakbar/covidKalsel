# == Schema Information
#
# Table name: news
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  tittle     :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  deleted_at :datetime
#
class New < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  acts_as_paranoid


  validates :tittle,:content, presence: true
end
