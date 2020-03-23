# == Schema Information
#
# Table name: hospitals
#
#  id            :bigint           not null, primary key
#  city_id       :bigint
#  name_hospital :string
#  address       :text
#  phone_number  :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#  deleted_at    :datetime
#
require 'test_helper'

class HospitalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
