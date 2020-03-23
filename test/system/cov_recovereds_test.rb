require "application_system_test_case"

class CovRecoveredsTest < ApplicationSystemTestCase
  setup do
    @cov_recovered = cov_recovereds(:one)
  end

  test "visiting the index" do
    visit cov_recovereds_url
    assert_selector "h1", text: "Cov Recovereds"
  end

  test "creating a Cov recovered" do
    visit cov_recovereds_url
    click_on "New Cov Recovered"

    fill_in "Amount", with: @cov_recovered.amount
    fill_in "City", with: @cov_recovered.city_id
    fill_in "Datetime", with: @cov_recovered.dateTime
    click_on "Create Cov recovered"

    assert_text "Cov recovered was successfully created"
    click_on "Back"
  end

  test "updating a Cov recovered" do
    visit cov_recovereds_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cov_recovered.amount
    fill_in "City", with: @cov_recovered.city_id
    fill_in "Datetime", with: @cov_recovered.dateTime
    click_on "Update Cov recovered"

    assert_text "Cov recovered was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov recovered" do
    visit cov_recovereds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov recovered was successfully destroyed"
  end
end
