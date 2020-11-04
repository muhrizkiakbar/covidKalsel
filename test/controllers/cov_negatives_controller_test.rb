require 'test_helper'

class CovNegativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_negative = cov_negatives(:one)
  end

  test "should get index" do
    get cov_negatives_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_negative_url
    assert_response :success
  end

  test "should create cov_negative" do
    assert_difference('CovNegative.count') do
      post cov_negatives_url, params: { cov_negative: { amount: @cov_negative.amount, city_id: @cov_negative.city_id, added_at: @cov_negative.added_at } }
    end

    assert_redirected_to cov_negative_url(CovNegative.last)
  end

  test "should show cov_negative" do
    get cov_negative_url(@cov_negative)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_negative_url(@cov_negative)
    assert_response :success
  end

  test "should update cov_negative" do
    patch cov_negative_url(@cov_negative), params: { cov_negative: { amount: @cov_negative.amount, city_id: @cov_negative.city_id, added_at: @cov_negative.added_at } }
    assert_redirected_to cov_negative_url(@cov_negative)
  end

  test "should destroy cov_negative" do
    assert_difference('CovNegative.count', -1) do
      delete cov_negative_url(@cov_negative)
    end

    assert_redirected_to cov_negatives_url
  end
end
