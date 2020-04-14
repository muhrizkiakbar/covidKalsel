require "application_system_test_case"

class CovOdpsTest < ApplicationSystemTestCase
  setup do
    @cov_odp = cov_odps(:one)
  end

  test "visiting the index" do
    visit cov_odps_url
    assert_selector "h1", text: "Cov Odps"
  end

  test "creating a Cov odp" do
    visit cov_odps_url
    click_on "New Cov Odp"

    fill_in "Amount", with: @cov_odp.amount
    fill_in "City", with: @cov_odp.city_id
    fill_in "Datetime", with: @cov_odp.added_at
    click_on "Create Cov odp"

    assert_text "Cov odp was successfully created"
    click_on "Back"
  end

  test "updating a Cov odp" do
    visit cov_odps_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cov_odp.amount
    fill_in "City", with: @cov_odp.city_id
    fill_in "Datetime", with: @cov_odp.added_at
    click_on "Update Cov odp"

    assert_text "Cov odp was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov odp" do
    visit cov_odps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov odp was successfully destroyed"
  end
end
