require 'test_helper'

class SessionUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get session_users_create_url
    assert_response :success
  end

  test "should get destroy" do
    get session_users_destroy_url
    assert_response :success
  end

end
