require 'test_helper'

class CovSuspectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cov_suspect = cov_suspects(:one)
  end

  test "should get index" do
    get cov_suspects_url
    assert_response :success
  end

  test "should get new" do
    get new_cov_suspect_url
    assert_response :success
  end

  test "should create cov_suspect" do
    assert_difference('CovSuspect.count') do
      post cov_suspects_url, params: { cov_suspect: { added_at: @cov_suspect.added_at, amount: @cov_suspect.amount, city_id: @cov_suspect.city_id } }
    end

    assert_redirected_to cov_suspect_url(CovSuspect.last)
  end

  test "should show cov_suspect" do
    get cov_suspect_url(@cov_suspect)
    assert_response :success
  end

  test "should get edit" do
    get edit_cov_suspect_url(@cov_suspect)
    assert_response :success
  end

  test "should update cov_suspect" do
    patch cov_suspect_url(@cov_suspect), params: { cov_suspect: { added_at: @cov_suspect.added_at, amount: @cov_suspect.amount, city_id: @cov_suspect.city_id } }
    assert_redirected_to cov_suspect_url(@cov_suspect)
  end

  test "should destroy cov_suspect" do
    assert_difference('CovSuspect.count', -1) do
      delete cov_suspect_url(@cov_suspect)
    end

    assert_redirected_to cov_suspects_url
  end
end
