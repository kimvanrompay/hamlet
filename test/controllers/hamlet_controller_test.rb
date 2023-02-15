require "test_helper"

class HamletControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get hamlet_home_url
    assert_response :success
  end

  test "should get legal" do
    get hamlet_legal_url
    assert_response :success
  end

  test "should get privacy" do
    get hamlet_privacy_url
    assert_response :success
  end
end
