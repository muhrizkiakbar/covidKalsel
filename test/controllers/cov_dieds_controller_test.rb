require 'test_helper'

class CovDiedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_died = cov_dieds(:one)
  end

  test "should get index" do
    get cov_dieds_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_died_url
    assert_response :success
  end

  test "should create cov_died" do
    assert_difference('CovDied.count') do
      post cov_dieds_url, params: { cov_died: { amount: @cov_died.amount, city_id: @cov_died.city_id, dateTime: @cov_died.dateTime } }
    end

    assert_redirected_to cov_died_url(CovDied.last)
  end

  test "should show cov_died" do
    get cov_died_url(@cov_died)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_died_url(@cov_died)
    assert_response :success
  end

  test "should update cov_died" do
    patch cov_died_url(@cov_died), params: { cov_died: { amount: @cov_died.amount, city_id: @cov_died.city_id, dateTime: @cov_died.dateTime } }
    assert_redirected_to cov_died_url(@cov_died)
  end

  test "should destroy cov_died" do
    assert_difference('CovDied.count', -1) do
      delete cov_died_url(@cov_died)
    end

    assert_redirected_to cov_dieds_url
  end
end
