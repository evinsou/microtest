require 'test_helper'

class ReceiverControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get receiver_create_url
    assert_response :success
  end

end
