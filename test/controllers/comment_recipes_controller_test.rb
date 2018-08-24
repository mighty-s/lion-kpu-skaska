require 'test_helper'

class CommentRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment_recipes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get comment_recipes_destroy_url
    assert_response :success
  end

end
