require "application_system_test_case"

class CovPdpsTest < ApplicationSystemTestCase
  setup do
    @cov_pdp = cov_pdps(:one)
  end

  test "visiting the index" do
    visit cov_pdps_url
    assert_selector "h1", text: "Cov Pdps"
  end

  test "creating a Cov pdp" do
    visit cov_pdps_url
    click_on "New Cov Pdp"

    fill_in "Amount", with: @cov_pdp.amount
    fill_in "City", with: @cov_pdp.city_id
    fill_in "Datetime", with: @cov_pdp.added_at
    click_on "Create Cov pdp"

    assert_text "Cov pdp was successfully created"
    click_on "Back"
  end

  test "updating a Cov pdp" do
    visit cov_pdps_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cov_pdp.amount
    fill_in "City", with: @cov_pdp.city_id
    fill_in "Datetime", with: @cov_pdp.added_at
    click_on "Update Cov pdp"

    assert_text "Cov pdp was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov pdp" do
    visit cov_pdps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov pdp was successfully destroyed"
  end
end
