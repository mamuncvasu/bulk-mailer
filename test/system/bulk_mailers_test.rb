require "application_system_test_case"

class BulkMailersTest < ApplicationSystemTestCase
  setup do
    @bulk_mailer = bulk_mailers(:one)
  end

  test "visiting the index" do
    visit bulk_mailers_url
    assert_selector "h1", text: "Bulk mailers"
  end

  test "should create bulk mailer" do
    visit bulk_mailers_url
    click_on "New bulk mailer"

    fill_in "Body", with: @bulk_mailer.body
    fill_in "Cc", with: @bulk_mailer.cc
    fill_in "Subject", with: @bulk_mailer.subject
    fill_in "To", with: @bulk_mailer.to
    click_on "Create Bulk mailer"

    assert_text "Bulk mailer was successfully created"
    click_on "Back"
  end

  test "should update Bulk mailer" do
    visit bulk_mailer_url(@bulk_mailer)
    click_on "Edit this bulk mailer", match: :first

    fill_in "Body", with: @bulk_mailer.body
    fill_in "Cc", with: @bulk_mailer.cc
    fill_in "Subject", with: @bulk_mailer.subject
    fill_in "To", with: @bulk_mailer.to
    click_on "Update Bulk mailer"

    assert_text "Bulk mailer was successfully updated"
    click_on "Back"
  end

  test "should destroy Bulk mailer" do
    visit bulk_mailer_url(@bulk_mailer)
    click_on "Destroy this bulk mailer", match: :first

    assert_text "Bulk mailer was successfully destroyed"
  end
end
