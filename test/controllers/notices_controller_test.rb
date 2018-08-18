require 'test_helper'

class NoticesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notice = notices(:one)
  end

  test "should get index" do
    get notices_url
    assert_response :success
  end

  test "should get new" do
    get new_notice_url
    assert_response :success
  end

  test "should create notice" do
    assert_difference('Notice.count') do
      post notices_url, params: { notice: { content: @notice.content, customer_id: @notice.customer_id, flag: @notice.flag, showed: @notice.showed, title: @notice.title } }
    end

    assert_redirected_to notice_url(Notice.last)
  end

  test "should show notice" do
    get notice_url(@notice)
    assert_response :success
  end

  test "should get edit" do
    get edit_notice_url(@notice)
    assert_response :success
  end

  test "should update notice" do
    patch notice_url(@notice), params: { notice: { content: @notice.content, customer_id: @notice.customer_id, flag: @notice.flag, showed: @notice.showed, title: @notice.title } }
    assert_redirected_to notice_url(@notice)
  end

  test "should destroy notice" do
    assert_difference('Notice.count', -1) do
      delete notice_url(@notice)
    end

    assert_redirected_to notices_url
  end
end
