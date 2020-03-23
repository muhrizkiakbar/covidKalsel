class CovPositive < ApplicationRecord
  belongs_to :city


  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
end
