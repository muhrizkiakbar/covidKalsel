# == Schema Information
#
# Table name: letters
#
#  id                  :bigint           not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  letter_file_name    :string
#  letter_content_type :string
#  letter_file_size    :bigint
#  letter_updated_at   :datetime
#  slug                :string
#  deleted_at          :datetime
#  name_file           :string
#
class Letter < ApplicationRecord
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    acts_as_paranoid

    has_attached_file :letter, styles: { medium: "595x842>", thumb: "193x281>" }
    validates_attachment_content_type :letter, content_type: /\Aimage\/.*\z/
    paginates_per 20
end
