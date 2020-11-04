require "application_system_test_case"

class CovPositivesTest < ApplicationSystemTestCase
  setup do
    @cov_positive = cov_positives(:one)
  end

  test "visiting the index" do
    visit cov_positives_url
    assert_selector "h1", text: "Cov Positives"
  end

  test "creating a Cov positive" do
    visit cov_positives_url
    click_on "New Cov Positive"

    fill_in "Amount", with: @cov_positive.amount
    fill_in "City", with: @cov_positive.city_id
    fill_in "Datetime", with: @cov_positive.added_at
    click_on "Create Cov positive"

    assert_text "Cov positive was successfully created"
    click_on "Back"
  end

  test "updating a Cov positive" do
    visit cov_positives_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cov_positive.amount
    fill_in "City", with: @cov_positive.city_id
    fill_in "Datetime", with: @cov_positive.added_at
    click_on "Update Cov positive"

    assert_text "Cov positive was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov positive" do
    visit cov_positives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov positive was successfully destroyed"
  end
end
