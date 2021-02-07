require "application_system_test_case"

class RecsTest < ApplicationSystemTestCase
  setup do
    @rec = recs(:one)
  end

  test "visiting the index" do
    visit recs_url
    assert_selector "h1", text: "Recs"
  end

  test "creating a Rec" do
    visit recs_url
    click_on "New Rec"

    fill_in "Description", with: @rec.description
    fill_in "Link", with: @rec.link
    fill_in "Title", with: @rec.title
    fill_in "User profile", with: @rec.user_profile_id
    click_on "Create Rec"

    assert_text "Rec was successfully created"
    click_on "Back"
  end

  test "updating a Rec" do
    visit recs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rec.description
    fill_in "Link", with: @rec.link
    fill_in "Title", with: @rec.title
    fill_in "User profile", with: @rec.user_profile_id
    click_on "Update Rec"

    assert_text "Rec was successfully updated"
    click_on "Back"
  end

  test "destroying a Rec" do
    visit recs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rec was successfully destroyed"
  end
end
