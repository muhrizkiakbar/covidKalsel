require 'test_helper'

class CovPdpProcessedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_pdp_processed = cov_pdp_processeds(:one)
  end

  test "should get index" do
    get cov_pdp_processeds_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_pdp_processed_url
    assert_response :success
  end

  test "should create cov_pdp_processed" do
    assert_difference('CovPdpProcessed.count') do
      post cov_pdp_processeds_url, params: { cov_pdp_processed: { amount: @cov_pdp_processed.amount, city_id: @cov_pdp_processed.city_id, added_at: @cov_pdp_processed.added_at } }
    end

    assert_redirected_to cov_pdp_processed_url(CovPdpProcessed.last)
  end

  test "should show cov_pdp_processed" do
    get cov_pdp_processed_url(@cov_pdp_processed)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_pdp_processed_url(@cov_pdp_processed)
    assert_response :success
  end

  test "should update cov_pdp_processed" do
    patch cov_pdp_processed_url(@cov_pdp_processed), params: { cov_pdp_processed: { amount: @cov_pdp_processed.amount, city_id: @cov_pdp_processed.city_id, added_at: @cov_pdp_processed.added_at } }
    assert_redirected_to cov_pdp_processed_url(@cov_pdp_processed)
  end

  test "should destroy cov_pdp_processed" do
    assert_difference('CovPdpProcessed.count', -1) do
      delete cov_pdp_processed_url(@cov_pdp_processed)
    end

    assert_redirected_to cov_pdp_processeds_url
  end
end
