require "application_system_test_case"

class JobofferhastagsTest < ApplicationSystemTestCase
  setup do
    @jobofferhastag = jobofferhastags(:one)
  end

  test "visiting the index" do
    visit jobofferhastags_url
    assert_selector "h1", text: "Jobofferhastags"
  end

  test "should create jobofferhastag" do
    visit jobofferhastags_url
    click_on "New jobofferhastag"

    fill_in "Joboffer", with: @jobofferhastag.joboffer_id
    fill_in "Tag", with: @jobofferhastag.tag_id
    fill_in "User", with: @jobofferhastag.user_id
    click_on "Create Jobofferhastag"

    assert_text "Jobofferhastag was successfully created"
    click_on "Back"
  end

  test "should update Jobofferhastag" do
    visit jobofferhastag_url(@jobofferhastag)
    click_on "Edit this jobofferhastag", match: :first

    fill_in "Joboffer", with: @jobofferhastag.joboffer_id
    fill_in "Tag", with: @jobofferhastag.tag_id
    fill_in "User", with: @jobofferhastag.user_id
    click_on "Update Jobofferhastag"

    assert_text "Jobofferhastag was successfully updated"
    click_on "Back"
  end

  test "should destroy Jobofferhastag" do
    visit jobofferhastag_url(@jobofferhastag)
    click_on "Destroy this jobofferhastag", match: :first

    assert_text "Jobofferhastag was successfully destroyed"
  end
end
