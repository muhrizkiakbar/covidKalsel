# == Schema Information
#
# Table name: cov_odps
#
#  id         :bigint           not null, primary key
#  city_id    :bigint
#  amount     :integer
#  added_at   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  deleted_at :datetime
#
require 'test_helper'

class CovOdpTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
