require 'test_helper'

class InstagramControllerTest < ActionDispatch::IntegrationTest
  test "should get callback" do
    get instagram_callback_url
    assert_response :success
  end

end
