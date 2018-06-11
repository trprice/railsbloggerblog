require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog = blogs(:one)
  end

  test "should get index" do
    get blogs_url
    assert_response :success
  end

  test "should create blog" do
    assert_difference('Blog.count') do
      post blogs_url, params: { blog: { blog_id: @blog.blog_id, description: @blog.description, kind: @blog.kind, localeCountry: @blog.localeCountry, localeLanguage: @blog.localeLanguage, localeVariant: @blog.localeVariant, pagesSelfLink: @blog.pagesSelfLink, pagesTotalItems: @blog.pagesTotalItems, postsSelfLink: @blog.postsSelfLink, postsTotalItems: @blog.postsTotalItems, publishedDate: @blog.publishedDate, selfLink: @blog.selfLink, updateDate: @blog.updateDate, url: @blog.url } }
    end

    assert_redirected_to blog_url(Blog.last)
  end

  test "should show blog" do
    get blog_url(@blog)
    assert_response :success
  end

  test "should update blog" do
    patch blog_url(@blog), params: { blog: { blog_id: @blog.blog_id, description: @blog.description, kind: @blog.kind, localeCountry: @blog.localeCountry, localeLanguage: @blog.localeLanguage, localeVariant: @blog.localeVariant, pagesSelfLink: @blog.pagesSelfLink, pagesTotalItems: @blog.pagesTotalItems, postsSelfLink: @blog.postsSelfLink, postsTotalItems: @blog.postsTotalItems, publishedDate: @blog.publishedDate, selfLink: @blog.selfLink, updateDate: @blog.updateDate, url: @blog.url } }
    assert_redirected_to blog_url(@blog)
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete blog_url(@blog)
    end

    assert_redirected_to blogs_url
  end
end
