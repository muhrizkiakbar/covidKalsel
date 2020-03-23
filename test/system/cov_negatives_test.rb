require "application_system_test_case"

class CovNegativesTest < ApplicationSystemTestCase
  setup do
    @cov_negative = cov_negatives(:one)
  end

  test "visiting the index" do
    visit cov_negatives_url
    assert_selector "h1", text: "Cov Negatives"
  end

  test "creating a Cov negative" do
    visit cov_negatives_url
    click_on "New Cov Negative"

    fill_in "Amount", with: @cov_negative.amount
    fill_in "City", with: @cov_negative.city_id
    fill_in "Datetime", with: @cov_negative.dateTime
    click_on "Create Cov negative"

    assert_text "Cov negative was successfully created"
    click_on "Back"
  end

  test "updating a Cov negative" do
    visit cov_negatives_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cov_negative.amount
    fill_in "City", with: @cov_negative.city_id
    fill_in "Datetime", with: @cov_negative.dateTime
    click_on "Update Cov negative"

    assert_text "Cov negative was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov negative" do
    visit cov_negatives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov negative was successfully destroyed"
  end
end
