require "application_system_test_case"

class SharesTest < ApplicationSystemTestCase
  setup do
    @share = shares(:one)
  end

  test "visiting the index" do
    visit shares_url
    assert_selector "h1", text: "Shares"
  end

  test "should create share" do
    visit shares_url
    click_on "New share"

    fill_in "Platform", with: @share.platform
    fill_in "Share url", with: @share.share_url
    fill_in "User", with: @share.user_id
    click_on "Create Share"

    assert_text "Share was successfully created"
    click_on "Back"
  end

  test "should update Share" do
    visit share_url(@share)
    click_on "Edit this share", match: :first

    fill_in "Platform", with: @share.platform
    fill_in "Share url", with: @share.share_url
    fill_in "User", with: @share.user_id
    click_on "Update Share"

    assert_text "Share was successfully updated"
    click_on "Back"
  end

  test "should destroy Share" do
    visit share_url(@share)
    click_on "Destroy this share", match: :first

    assert_text "Share was successfully destroyed"
  end
end
