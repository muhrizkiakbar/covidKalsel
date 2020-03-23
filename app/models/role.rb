class Role < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  
  acts_as_paranoid
end
