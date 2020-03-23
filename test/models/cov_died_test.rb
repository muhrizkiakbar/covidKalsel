# == Schema Information
#
# Table name: cov_dieds
#
#  id         :bigint           not null, primary key
#  city_id    :bigint
#  amount     :integer
#  dateTime   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  deleted_at :datetime
#
require 'test_helper'

class CovDiedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
