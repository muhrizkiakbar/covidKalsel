# == Schema Information
#
# Table name: information
#
#  id                         :bigint           not null, primary key
#  user_id                    :bigint
#  tittle                     :string
#  content                    :text
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  image_content_file_name    :string
#  image_content_content_type :string
#  image_content_file_size    :bigint
#  image_content_updated_at   :datetime
#  deleted_at                 :datetime
#  slug                       :string
#
class Information < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  acts_as_paranoid


  validates :tittle,:content, presence: true

  has_attached_file :image_content, styles: { medium: "1080x720>", thumb: "108x72>" }
  validates_attachment_content_type :image_content, content_type: /\Aimage\/.*\z/
end
