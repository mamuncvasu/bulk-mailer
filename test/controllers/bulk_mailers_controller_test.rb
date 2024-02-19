require "test_helper"

class BulkMailersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulk_mailer = bulk_mailers(:one)
  end

  test "should get index" do
    get bulk_mailers_url
    assert_response :success
  end

  test "should get new" do
    get new_bulk_mailer_url
    assert_response :success
  end

  test "should create bulk_mailer" do
    assert_difference("BulkMailer.count") do
      post bulk_mailers_url, params: { bulk_mailer: { body: @bulk_mailer.body, cc: @bulk_mailer.cc, subject: @bulk_mailer.subject, to: @bulk_mailer.to } }
    end

    assert_redirected_to bulk_mailer_url(BulkMailer.last)
  end

  test "should show bulk_mailer" do
    get bulk_mailer_url(@bulk_mailer)
    assert_response :success
  end

  test "should get edit" do
    get edit_bulk_mailer_url(@bulk_mailer)
    assert_response :success
  end

  test "should update bulk_mailer" do
    patch bulk_mailer_url(@bulk_mailer), params: { bulk_mailer: { body: @bulk_mailer.body, cc: @bulk_mailer.cc, subject: @bulk_mailer.subject, to: @bulk_mailer.to } }
    assert_redirected_to bulk_mailer_url(@bulk_mailer)
  end

  test "should destroy bulk_mailer" do
    assert_difference("BulkMailer.count", -1) do
      delete bulk_mailer_url(@bulk_mailer)
    end

    assert_redirected_to bulk_mailers_url
  end
end
