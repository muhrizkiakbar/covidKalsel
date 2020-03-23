require "application_system_test_case"

class CovDiedsTest < ApplicationSystemTestCase
  setup do
    @cov_died = cov_dieds(:one)
  end

  test "visiting the index" do
    visit cov_dieds_url
    assert_selector "h1", text: "Cov Dieds"
  end

  test "creating a Cov died" do
    visit cov_dieds_url
    click_on "New Cov Died"

    fill_in "Amount", with: @cov_died.amount
    fill_in "City", with: @cov_died.city_id
    fill_in "Datetime", with: @cov_died.dateTime
    click_on "Create Cov died"

    assert_text "Cov died was successfully created"
    click_on "Back"
  end

  test "updating a Cov died" do
    visit cov_dieds_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cov_died.amount
    fill_in "City", with: @cov_died.city_id
    fill_in "Datetime", with: @cov_died.dateTime
    click_on "Update Cov died"

    assert_text "Cov died was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov died" do
    visit cov_dieds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov died was successfully destroyed"
  end
end
