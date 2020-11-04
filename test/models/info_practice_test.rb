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
require 'test_helper'

class InfoPracticeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
