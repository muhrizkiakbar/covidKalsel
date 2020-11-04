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
require 'test_helper'

class InformationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
