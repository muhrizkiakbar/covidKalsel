# == Schema Information
#
# Table name: cov_odp_processeds
#
#  id         :bigint           not null, primary key
#  city_id    :bigint
#  amount     :integer
#  dateTime   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  deleted_at :datetime
#
class CovOdpProcessed < ApplicationRecord
  belongs_to :city

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  acts_as_paranoid

  validates :amount,:dateTime, presence: true
  validates :amount, numericality: { only_integer: true }
end
