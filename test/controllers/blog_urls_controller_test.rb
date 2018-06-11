require 'test_helper'

class BlogUrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_url = blog_urls(:one)
  end

  test "should get index" do
    get blog_urls_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_url_url
    assert_response :success
  end

  test "should create blog_url" do
    assert_difference('BlogUrl.count') do
      post blog_urls_url, params: { blog_url: { blog_id: @blog_url.blog_id, url: @blog_url.url } }
    end

    assert_redirected_to blog_url_url(BlogUrl.last)
  end

  test "should show blog_url" do
    get blog_url_url(@blog_url)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_url_url(@blog_url)
    assert_response :success
  end

  test "should update blog_url" do
    patch blog_url_url(@blog_url), params: { blog_url: { blog_id: @blog_url.blog_id, url: @blog_url.url } }
    assert_redirected_to blog_url_url(@blog_url)
  end

  test "should destroy blog_url" do
    assert_difference('BlogUrl.count', -1) do
      delete blog_url_url(@blog_url)
    end

    assert_redirected_to blog_urls_url
  end
end
