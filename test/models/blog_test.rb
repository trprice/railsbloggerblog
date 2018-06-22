require 'test_helper'
require 'google/apis/blogger_v3'

class BlogTest < ActiveSupport::TestCase
  test "Should not save blog without id" do
    blog = Blog.new
    assert_not blog.save, "Saved the blog without a blog id"
  end

  test "From blogger should result in valid object" do
    Blogger = Google::Apis::BloggerV3 # Alias the module
    service = Blogger::BloggerService.new

		service.key = ENV["GOOGLE_API_KEY"]

    blog_url = "https://taylortests.blogspot.com"

		returned_blog = service.get_blog_by_url(blog_url)

    b = Blog.from_blogber(returned_blog)

    return b
  end
end
