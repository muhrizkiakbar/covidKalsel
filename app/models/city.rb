# == Schema Information
#
# Table name: cities
#
#  id                  :bigint           not null, primary key
#  name                :string
#  call_center         :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  cov_positive_count  :integer
#  cov_negative_count  :integer
#  cov_recovered_count :integer
#  cov_died_count      :integer
#  cov_odp_count       :integer
#  cov_pdp_count       :integer
#  slug                :string
#  deleted_at          :datetime
#
class City < ApplicationRecord

    
    has_many :cov_positives
    has_many :cov_negatives
    has_many :cov_recovereds
    has_many :cov_dieds
    has_many :cov_odps
    has_many :cov_pdps

    has_many :hospitals

    acts_as_paranoid
    
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    validates :name, presence: true
    validates :call_center, presence: true
end
