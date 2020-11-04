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
require 'test_helper'

class LetterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
