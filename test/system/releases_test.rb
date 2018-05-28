require "application_system_test_case"

class ReleasesTest < ApplicationSystemTestCase
  setup do
    @release = releases(:one)
  end

  test "visiting the index" do
    visit releases_url
    assert_selector "h1", text: "Releases"
  end

  test "creating a Release" do
    visit releases_url
    click_on "New Release"

    fill_in "Account", with: @release.account_id
    fill_in "Release Type", with: @release.release_type
    fill_in "Value", with: @release.value
    click_on "Create Release"

    assert_text "Release was successfully created"
    click_on "Back"
  end

  test "updating a Release" do
    visit releases_url
    click_on "Edit", match: :first

    fill_in "Account", with: @release.account_id
    fill_in "Release Type", with: @release.release_type
    fill_in "Value", with: @release.value
    click_on "Update Release"

    assert_text "Release was successfully updated"
    click_on "Back"
  end

  test "destroying a Release" do
    visit releases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Release was successfully destroyed"
  end
end
