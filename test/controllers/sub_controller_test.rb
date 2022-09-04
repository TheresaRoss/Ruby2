require "test_helper"

class SubControllerTest < ActionDispatch::IntegrationTest
  test "should get Second" do
    get sub_Second_url
    assert_response :success
  end
end
