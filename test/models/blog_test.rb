require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  test "Should not save blog without id" do
    blog = Blog.new
    assert_not blog.save, "Saved the blog without a blog id"
  end
end
