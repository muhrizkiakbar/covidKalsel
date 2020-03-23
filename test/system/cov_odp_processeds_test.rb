require "application_system_test_case"

class CovOdpProcessedsTest < ApplicationSystemTestCase
  setup do
    @cov_odp_processed = cov_odp_processeds(:one)
  end

  test "visiting the index" do
    visit cov_odp_processeds_url
    assert_selector "h1", text: "Cov Odp Processeds"
  end

  test "creating a Cov odp processed" do
    visit cov_odp_processeds_url
    click_on "New Cov Odp Processed"

    fill_in "Amount", with: @cov_odp_processed.amount
    fill_in "City", with: @cov_odp_processed.city_id
    fill_in "Datetime", with: @cov_odp_processed.dateTime
    click_on "Create Cov odp processed"

    assert_text "Cov odp processed was successfully created"
    click_on "Back"
  end

  test "updating a Cov odp processed" do
    visit cov_odp_processeds_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cov_odp_processed.amount
    fill_in "City", with: @cov_odp_processed.city_id
    fill_in "Datetime", with: @cov_odp_processed.dateTime
    click_on "Update Cov odp processed"

    assert_text "Cov odp processed was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov odp processed" do
    visit cov_odp_processeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov odp processed was successfully destroyed"
  end
end
