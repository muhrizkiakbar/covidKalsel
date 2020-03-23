class CovDied < ApplicationRecord
  belongs_to :city
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  Paperclip.interpolates :slug do |attachment, style|
      attachment.instance.slug
  end
end
