require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(body: "This is a comment.")
  end

  test "body should be present" do
  @comment.body = "     "
  assert_not @comment.valid?
  end

  test "body should have at least 1 character" do
    @comment.body = ""
    assert_not @comment.valid?
  end
end
