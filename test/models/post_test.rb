require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @post = Post.new(link: "this is a link")
  end

  test "link should be present" do
  @post.link = "     "
  assert_not @post.valid?
  end

  test "link should have at least 1 character" do
    @post.link = ""
    assert_not @post.valid?
  end
end
