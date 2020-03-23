require 'test_helper'

class CovRecoveredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_recovered = cov_recovereds(:one)
  end

  test "should get index" do
    get cov_recovereds_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_recovered_url
    assert_response :success
  end

  test "should create cov_recovered" do
    assert_difference('CovRecovered.count') do
      post cov_recovereds_url, params: { cov_recovered: { amount: @cov_recovered.amount, city_id: @cov_recovered.city_id, dateTime: @cov_recovered.dateTime } }
    end

    assert_redirected_to cov_recovered_url(CovRecovered.last)
  end

  test "should show cov_recovered" do
    get cov_recovered_url(@cov_recovered)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_recovered_url(@cov_recovered)
    assert_response :success
  end

  test "should update cov_recovered" do
    patch cov_recovered_url(@cov_recovered), params: { cov_recovered: { amount: @cov_recovered.amount, city_id: @cov_recovered.city_id, dateTime: @cov_recovered.dateTime } }
    assert_redirected_to cov_recovered_url(@cov_recovered)
  end

  test "should destroy cov_recovered" do
    assert_difference('CovRecovered.count', -1) do
      delete cov_recovered_url(@cov_recovered)
    end

    assert_redirected_to cov_recovereds_url
  end
end
