require "application_system_test_case"

class CovSuspectsTest < ApplicationSystemTestCase
  setup do
    @cov_suspect = cov_suspects(:one)
  end

  test "visiting the index" do
    visit cov_suspects_url
    assert_selector "h1", text: "Cov Suspects"
  end

  test "creating a Cov suspect" do
    visit cov_suspects_url
    click_on "New Cov Suspect"

    fill_in "Added at", with: @cov_suspect.added_at
    fill_in "Amount", with: @cov_suspect.amount
    fill_in "City", with: @cov_suspect.city_id
    click_on "Create Cov suspect"

    assert_text "Cov suspect was successfully created"
    click_on "Back"
  end

  test "updating a Cov suspect" do
    visit cov_suspects_url
    click_on "Edit", match: :first

    fill_in "Added at", with: @cov_suspect.added_at
    fill_in "Amount", with: @cov_suspect.amount
    fill_in "City", with: @cov_suspect.city_id
    click_on "Update Cov suspect"

    assert_text "Cov suspect was successfully updated"
    click_on "Back"
  end

  test "destroying a Cov suspect" do
    visit cov_suspects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cov suspect was successfully destroyed"
  end
end
