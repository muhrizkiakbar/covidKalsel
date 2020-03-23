class City < ApplicationRecord


    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    Paperclip.interpolates :slug do |attachment, style|
        attachment.instance.slug
    end
end
