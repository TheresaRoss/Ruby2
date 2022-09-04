require "test_helper"

class SsControllerTest < ActionDispatch::IntegrationTest
  test "should get First" do
    get ss_First_url
    assert_response :success
  end
end
