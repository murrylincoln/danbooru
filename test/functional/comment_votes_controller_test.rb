require 'test_helper'

class CommentVotesControllerTest < ActionController::TestCase
  context "A comment votes controller" do
    setup do
      CurrentUser.user = Factory.create(:user)
      CurrentUser.ip_addr = "127.0.0.1"
      @comment = Factory.create(:comment)
      @user = Factory.create(:user)
    end
    
    teardown do
      CurrentUser.user = nil
      CurrentUser.ip_addr = nil
    end
    
    should "create a vote" do
      assert_difference("CommentVote.count", 1) do
        post :create, {:format => "js", :comment_id => @comment.id}, {:user_id => @user.id}
        assert_response :success
      end
    end
  end
end
