# == Schema Information
#
# Table name: cities
#
#  id                      :bigint           not null, primary key
#  name                    :string
#  call_center             :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  cov_positive_count      :integer
#  cov_negative_count      :integer
#  cov_recovered_count     :integer
#  cov_died_count          :integer
#  cov_odp_count           :integer
#  cov_pdp_count           :integer
#  slug                    :string
#  deleted_at              :datetime
#  cov_odp_processed_count :integer
#  cov_pdp_processed_count :integer
#
require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
