class Letter < ApplicationRecord
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    acts_as_paranoid

    has_attached_file :letter, styles: { medium: "595x842>", thumb: "193x281>" }
    validates_attachment_content_type :letter, content_type: /\Aimage\/.*\z/
    paginates_per 5
end
