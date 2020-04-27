# == Schema Information
#
# Table name: info_practices
#
#  id                         :bigint           not null, primary key
#  image_content_file_name    :string
#  image_content_content_type :string
#  image_content_file_size    :bigint
#  image_content_updated_at   :datetime
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  slug                       :string
#  deleted_at                 :datetime
#
class InfoPractice < ApplicationRecord


    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    acts_as_paranoid

    has_attached_file :image_content, styles: { medium: "595x842>", thumb: "193x281>" }
    validates_attachment_content_type :image_content, content_type: /\Aimage\/.*\z/
    paginates_per 5
end
