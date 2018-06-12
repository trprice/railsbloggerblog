require "application_system_test_case"

class BlogUrlsTest < ApplicationSystemTestCase
  setup do
    @blog_url = blog_urls(:one)
  end

  test "visiting the index" do
    visit blog_urls_url
    assert_selector "h1", text: "Blog Urls"
  end

  test "creating a Blog url" do
    visit blog_urls_url
    click_on "New Blog Url"

    fill_in "Url", with: @blog_url.url
    click_on "Create Blog url"

    assert_text "Blog url was successfully created"
    click_on "Back"
  end

  test "updating a Blog url" do
    visit blog_urls_url
    click_on "Edit", match: :first

    fill_in "Url", with: @blog_url.url
    click_on "Update Blog url"

    assert_text "Blog url was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog url" do
    visit blog_urls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog url was successfully destroyed"
  end
end
