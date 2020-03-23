class City < ApplicationRecord


    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

end
