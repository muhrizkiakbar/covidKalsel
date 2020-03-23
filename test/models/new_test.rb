# == Schema Information
#
# Table name: news
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  tittle     :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  deleted_at :datetime
#
require 'test_helper'

class NewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
