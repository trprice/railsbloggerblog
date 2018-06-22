require 'test_helper'

class BlogUrlTest < ActiveSupport::TestCase
  test "Should not save blog_url without url" do
    blog_url = BlogUrl.new
    blog_url.blog_id = 1
    assert_not blog_url.save, "Saved the blog_url without an url"
  end

  test "Should not save blog_url without an id" do
    blog_url = BlogUrl.new
    blog_url.url = "https://taylortests.blogspot.com"
    assert_not blog_url.save, "Saved the blog_url without an id"
  end
end
