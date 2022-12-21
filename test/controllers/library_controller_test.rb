require "test_helper"

class LibraryControllerTest < ActionDispatch::IntegrationTest
  test "should get showall" do
    get library_showall_url
    assert_response :success
  end
end
