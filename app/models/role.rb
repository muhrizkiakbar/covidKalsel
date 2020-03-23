# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  deleted_at :datetime
#
class Role < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  
  acts_as_paranoid


  validates :name, presence: true
end
