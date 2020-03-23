require 'test_helper'

class CovPdpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_pdp = cov_pdps(:one)
  end

  test "should get index" do
    get cov_pdps_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_pdp_url
    assert_response :success
  end

  test "should create cov_pdp" do
    assert_difference('CovPdp.count') do
      post cov_pdps_url, params: { cov_pdp: { amount: @cov_pdp.amount, city_id: @cov_pdp.city_id, dateTime: @cov_pdp.dateTime } }
    end

    assert_redirected_to cov_pdp_url(CovPdp.last)
  end

  test "should show cov_pdp" do
    get cov_pdp_url(@cov_pdp)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_pdp_url(@cov_pdp)
    assert_response :success
  end

  test "should update cov_pdp" do
    patch cov_pdp_url(@cov_pdp), params: { cov_pdp: { amount: @cov_pdp.amount, city_id: @cov_pdp.city_id, dateTime: @cov_pdp.dateTime } }
    assert_redirected_to cov_pdp_url(@cov_pdp)
  end

  test "should destroy cov_pdp" do
    assert_difference('CovPdp.count', -1) do
      delete cov_pdp_url(@cov_pdp)
    end

    assert_redirected_to cov_pdps_url
  end
end
