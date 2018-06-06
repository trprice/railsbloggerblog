require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "creating a Blog" do
    visit blogs_url
    click_on "New Blog"

    fill_in "Blog", with: @blog.blog_id
    fill_in "Description", with: @blog.description
    fill_in "Kind", with: @blog.kind
    fill_in "Localecountry", with: @blog.localeCountry
    fill_in "Localelanguage", with: @blog.localeLanguage
    fill_in "Localevariant", with: @blog.localeVariant
    fill_in "Pagesselflink", with: @blog.pagesSelfLink
    fill_in "Pagestotalitems", with: @blog.pagesTotalItems
    fill_in "Postsselflink", with: @blog.postsSelfLink
    fill_in "Poststotalitems", with: @blog.postsTotalItems
    fill_in "Publisheddate", with: @blog.publishedDate
    fill_in "Selflink", with: @blog.selfLink
    fill_in "Updatedate", with: @blog.updateDate
    fill_in "Url", with: @blog.url
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "updating a Blog" do
    visit blogs_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @blog.blog_id
    fill_in "Description", with: @blog.description
    fill_in "Kind", with: @blog.kind
    fill_in "Localecountry", with: @blog.localeCountry
    fill_in "Localelanguage", with: @blog.localeLanguage
    fill_in "Localevariant", with: @blog.localeVariant
    fill_in "Pagesselflink", with: @blog.pagesSelfLink
    fill_in "Pagestotalitems", with: @blog.pagesTotalItems
    fill_in "Postsselflink", with: @blog.postsSelfLink
    fill_in "Poststotalitems", with: @blog.postsTotalItems
    fill_in "Publisheddate", with: @blog.publishedDate
    fill_in "Selflink", with: @blog.selfLink
    fill_in "Updatedate", with: @blog.updateDate
    fill_in "Url", with: @blog.url
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog" do
    visit blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog was successfully destroyed"
  end
end
