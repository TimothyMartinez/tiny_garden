require 'test_helper'

class CarePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get care_pages_index_url
    assert_response :success
  end

end
