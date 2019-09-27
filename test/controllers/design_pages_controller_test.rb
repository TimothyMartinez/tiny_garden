require 'test_helper'

class DesignPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get design_pages_index_url
    assert_response :success
  end

end
