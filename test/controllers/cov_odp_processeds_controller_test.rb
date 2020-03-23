require 'test_helper'

class CovOdpProcessedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_odp_processed = cov_odp_processeds(:one)
  end

  test "should get index" do
    get cov_odp_processeds_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_odp_processed_url
    assert_response :success
  end

  test "should create cov_odp_processed" do
    assert_difference('CovOdpProcessed.count') do
      post cov_odp_processeds_url, params: { cov_odp_processed: { amount: @cov_odp_processed.amount, city_id: @cov_odp_processed.city_id, dateTime: @cov_odp_processed.dateTime } }
    end

    assert_redirected_to cov_odp_processed_url(CovOdpProcessed.last)
  end

  test "should show cov_odp_processed" do
    get cov_odp_processed_url(@cov_odp_processed)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_odp_processed_url(@cov_odp_processed)
    assert_response :success
  end

  test "should update cov_odp_processed" do
    patch cov_odp_processed_url(@cov_odp_processed), params: { cov_odp_processed: { amount: @cov_odp_processed.amount, city_id: @cov_odp_processed.city_id, dateTime: @cov_odp_processed.dateTime } }
    assert_redirected_to cov_odp_processed_url(@cov_odp_processed)
  end

  test "should destroy cov_odp_processed" do
    assert_difference('CovOdpProcessed.count', -1) do
      delete cov_odp_processed_url(@cov_odp_processed)
    end

    assert_redirected_to cov_odp_processeds_url
  end
end
