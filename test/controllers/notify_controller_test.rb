require 'test_helper'

class NotifyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notify_index_url
    assert_response :success
  end

end
