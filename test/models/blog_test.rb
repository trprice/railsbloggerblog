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

    b = Blog.from_blogger(returned_blog)

    # Check that each of the values match
    assert_equal(returned_blog.kind, b.kind)
    assert_equal(returned_blog.id, b.blog_id.to_s)
    assert_equal(returned_blog.name, b.name)
    assert_equal(returned_blog.description, b.description)
    assert_equal(returned_blog.published, b.publishedDate)
    assert_equal(returned_blog.updated, b.updateDate)
    assert_equal(returned_blog.url, b.url)
    assert_equal(returned_blog.self_link, b.selfLink)
    assert_equal(returned_blog.posts.total_items, b.postsTotalItems)
    assert_equal(returned_blog.posts.self_link, b.postsSelfLink)
    assert_equal(returned_blog.pages.total_items, b.pagesTotalItems)
    assert_equal(returned_blog.pages.self_link, b.pagesSelfLink)
    assert_equal(returned_blog.locale.language, b.localeLanguage)
    assert_equal(returned_blog.locale.country, b.localeCountry)
    assert_equal(returned_blog.locale.variant, b.localeVariant)
  end
end
