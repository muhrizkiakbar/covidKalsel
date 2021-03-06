# == Schema Information
#
# Table name: cov_pdps
#
#  id         :bigint           not null, primary key
#  city_id    :bigint
#  amount     :integer
#  added_at   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  deleted_at :datetime
#
class CovPdp < ApplicationRecord
  belongs_to :city

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  acts_as_paranoid

  validates :amount,:added_at, presence: true
  validates :amount, numericality: { only_integer: true }

  ransacker :added_at do
    Arel.sql("added_at::text")
  end
end
