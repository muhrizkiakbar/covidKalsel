# == Schema Information
#
# Table name: cities
#
#  id                      :bigint           not null, primary key
#  name                    :string
#  call_center             :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  cov_positive_count      :integer          default(0), not null
#  cov_negative_count      :integer          default(0), not null
#  cov_recovered_count     :integer          default(0), not null
#  cov_died_count          :integer          default(0), not null
#  cov_odp_count           :integer          default(0), not null
#  cov_pdp_count           :integer          default(0), not null
#  slug                    :string
#  deleted_at              :datetime
#  cov_odp_processed_count :integer          default(0), not null
#  cov_pdp_processed_count :integer          default(0), not null
#  hotline                 :string
#  code                    :string
#
class City < ApplicationRecord
    
    has_many :cov_positives
    has_many :cov_negatives
    has_many :cov_recovereds
    has_many :cov_dieds
    has_many :cov_odps
    has_many :cov_pdps

    has_many :cov_odp_processeds
    has_many :cov_pdp_processeds

    has_many :hospitals

    acts_as_paranoid
    

    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    validates :name, presence: true
    validates :call_center, presence: true
end
