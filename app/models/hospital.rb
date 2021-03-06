# == Schema Information
#
# Table name: hospitals
#
#  id            :bigint           not null, primary key
#  city_id       :bigint
#  name_hospital :string
#  address       :text
#  phone_number  :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#  deleted_at    :datetime
#  hotline       :string
#  is_primary    :boolean
#
class Hospital < ApplicationRecord
  belongs_to :city


  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  
  acts_as_paranoid

  validates :name_hospital,:address, presence: true
end
