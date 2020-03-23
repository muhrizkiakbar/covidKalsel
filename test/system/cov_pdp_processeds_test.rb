require "application_system_test_case"

class CovPdpProcessedsTest < ApplicationSystemTestCase
  setup do
    @cov_pdp_processed = cov_pdp_processeds(:one)
  end

  test "visiting the index" do
    visit cov_pdp_processeds_url
    assert_selector "h1", text: "Cov Pdp Processeds"
  end

  test "creating a Cov pdp processed" do
    visit cov_pdp_processeds_url
    click_on "New Cov Pdp Processed"

    fill_in "Amount", with: @cov_pdp_processed.amount
    fill_in "City", with: @cov_pdp_processed.city_id
    fill_in "Datetime", with: @cov_pdp_processed.dateTime
    click_on "Create Cov pdp processed"

    assert_text "Cov pdp processed was successfully created"
    click_on "Back"
  end

  test "updating a Cov pdp processed" do
    visit cov_pdp_processeds_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cov_pdp_processed.amount
    fill_in "City", with: @cov_pdp_processed.city_id
    fill_in "Datetime", with: @cov_pdp_processed.dateTime
    click_on "Update Cov pdp processed"

    assert_text "Cov pdp processed was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov pdp processed" do
    visit cov_pdp_processeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov pdp processed was successfully destroyed"
  end
end
