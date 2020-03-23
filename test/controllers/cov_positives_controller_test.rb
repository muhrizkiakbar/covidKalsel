require 'test_helper'

class CovPositivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_positive = cov_positives(:one)
  end

  test "should get index" do
    get cov_positives_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_positive_url
    assert_response :success
  end

  test "should create cov_positive" do
    assert_difference('CovPositive.count') do
      post cov_positives_url, params: { cov_positive: { amount: @cov_positive.amount, city_id: @cov_positive.city_id, dateTime: @cov_positive.dateTime } }
    end

    assert_redirected_to cov_positive_url(CovPositive.last)
  end

  test "should show cov_positive" do
    get cov_positive_url(@cov_positive)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_positive_url(@cov_positive)
    assert_response :success
  end

  test "should update cov_positive" do
    patch cov_positive_url(@cov_positive), params: { cov_positive: { amount: @cov_positive.amount, city_id: @cov_positive.city_id, dateTime: @cov_positive.dateTime } }
    assert_redirected_to cov_positive_url(@cov_positive)
  end

  test "should destroy cov_positive" do
    assert_difference('CovPositive.count', -1) do
      delete cov_positive_url(@cov_positive)
    end

    assert_redirected_to cov_positives_url
  end
end
