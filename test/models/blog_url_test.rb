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

  test "Should get blog id from the blog object pulled from Blogger" do
    blog_url = BlogUrl.new
    blog_url.url = "https://taylortests.blogspot.com"
   
    blog = BlogsHelper.get_blogger_by_url(blog_url.url)
    blog_url = BlogUrlsHelper.get_blog(blog_url.url)

    # This is a relatively silly test because it the actual helper sets
    # this exact value and so, if this doesn't work, there's something
    # REALLY wront.
    assert_equal(blog.blog_id, blog_url.blog_id)
  end
end
