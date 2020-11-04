require 'test_helper'

class InfoPracticesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_practice = info_practices(:one)
  end

  test "should get index" do
    get info_practices_url
    assert_response :success
  end

  test "should get new" do
    get new_info_practice_url
    assert_response :success
  end

  test "should create info_practice" do
    assert_difference('InfoPractice.count') do
      post info_practices_url, params: { info_practice: {  } }
    end

    assert_redirected_to info_practice_url(InfoPractice.last)
  end

  test "should show info_practice" do
    get info_practice_url(@info_practice)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_practice_url(@info_practice)
    assert_response :success
  end

  test "should update info_practice" do
    patch info_practice_url(@info_practice), params: { info_practice: {  } }
    assert_redirected_to info_practice_url(@info_practice)
  end

  test "should destroy info_practice" do
    assert_difference('InfoPractice.count', -1) do
      delete info_practice_url(@info_practice)
    end

    assert_redirected_to info_practices_url
  end
end
