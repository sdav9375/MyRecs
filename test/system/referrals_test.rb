require "application_system_test_case"

class ReferralsTest < ApplicationSystemTestCase
  setup do
    @referral = referrals(:one)
  end

  test "visiting the index" do
    visit referrals_url
    assert_selector "h1", text: "Referrals"
  end

  test "creating a Referral" do
    visit referrals_url
    click_on "New Referral"

    fill_in "Category", with: @referral.category
    fill_in "Comment", with: @referral.comment
    fill_in "Company", with: @referral.company
    fill_in "Link", with: @referral.link
    fill_in "Title", with: @referral.title
    click_on "Create Referral"

    assert_text "Referral was successfully created"
    click_on "Back"
  end

  test "updating a Referral" do
    visit referrals_url
    click_on "Edit", match: :first

    fill_in "Category", with: @referral.category
    fill_in "Comment", with: @referral.comment
    fill_in "Company", with: @referral.company
    fill_in "Link", with: @referral.link
    fill_in "Title", with: @referral.title
    click_on "Update Referral"

    assert_text "Referral was successfully updated"
    click_on "Back"
  end

  test "destroying a Referral" do
    visit referrals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Referral was successfully destroyed"
  end
end
