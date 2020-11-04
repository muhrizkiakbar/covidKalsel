require "application_system_test_case"

class InfoPracticesTest < ApplicationSystemTestCase
  setup do
    @info_practice = info_practices(:one)
  end

  test "visiting the index" do
    visit info_practices_url
    assert_selector "h1", text: "Info Practices"
  end

  test "creating a Info practice" do
    visit info_practices_url
    click_on "New Info Practice"

    click_on "Create Info practice"

    assert_text "Info practice was successfully created"
    click_on "Back"
  end

  test "updating a Info practice" do
    visit info_practices_url
    click_on "Edit", match: :first

    click_on "Update Info practice"

    assert_text "Info practice was successfully updated"
    click_on "Back"
  end

  test "destroying a Info practice" do
    visit info_practices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Info practice was successfully destroyed"
  end
end
