require 'test_helper'

class CovOdpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_odp = cov_odps(:one)
  end

  test "should get index" do
    get cov_odps_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_odp_url
    assert_response :success
  end

  test "should create cov_odp" do
    assert_difference('CovOdp.count') do
      post cov_odps_url, params: { cov_odp: { amount: @cov_odp.amount, city_id: @cov_odp.city_id, added_at: @cov_odp.added_at } }
    end

    assert_redirected_to cov_odp_url(CovOdp.last)
  end

  test "should show cov_odp" do
    get cov_odp_url(@cov_odp)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_odp_url(@cov_odp)
    assert_response :success
  end

  test "should update cov_odp" do
    patch cov_odp_url(@cov_odp), params: { cov_odp: { amount: @cov_odp.amount, city_id: @cov_odp.city_id, added_at: @cov_odp.added_at } }
    assert_redirected_to cov_odp_url(@cov_odp)
  end

  test "should destroy cov_odp" do
    assert_difference('CovOdp.count', -1) do
      delete cov_odp_url(@cov_odp)
    end

    assert_redirected_to cov_odps_url
  end
end
