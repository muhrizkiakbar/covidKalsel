class Role < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
end
