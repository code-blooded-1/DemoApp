require "application_system_test_case"

class PanDetailsTest < ApplicationSystemTestCase
  setup do
    @pan_detail = pan_details(:one)
  end

  test "visiting the index" do
    visit pan_details_url
    assert_selector "h1", text: "Pan details"
  end

  test "should create pan detail" do
    visit pan_details_url
    click_on "New pan detail"

    fill_in "Number", with: @pan_detail.number
    click_on "Create Pan detail"

    assert_text "Pan detail was successfully created"
    click_on "Back"
  end

  test "should update Pan detail" do
    visit pan_detail_url(@pan_detail)
    click_on "Edit this pan detail", match: :first

    fill_in "Number", with: @pan_detail.number
    click_on "Update Pan detail"

    assert_text "Pan detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Pan detail" do
    visit pan_detail_url(@pan_detail)
    click_on "Destroy this pan detail", match: :first

    assert_text "Pan detail was successfully destroyed"
  end
end
