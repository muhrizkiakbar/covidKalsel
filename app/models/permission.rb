# == Schema Information
#
# Table name: permissions
#
#  id          :bigint           not null, primary key
#  name        :string
#  resource    :string
#  action      :string
#  description :text
#  page        :boolean
#  path        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  deleted_at  :datetime
#
class Permission < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  acts_as_paranoid

  validates :name,:resource,:action,:description,:page,:path , presence: true
end
