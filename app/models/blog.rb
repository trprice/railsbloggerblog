require 'google/apis/blogger_v3'

class Blog < ApplicationRecord
  validates_presence_of :blog_id

  # Take a Google::Apis::BloggerV3::Blog and save it into a Blog entry
  def self.from_blogger(theBlog)
    b = Blog.new

    # What about the name?
    #   Create a migration to add it?
    b.kind = theBlog.kind
    b.blog_id = theBlog.id
    b.name = theBlog.name
    b.description = theBlog.description
    b.publishedDate = theBlog.published
    b.updateDate = theBlog.updated
    b.url = theBlog.url
    b.selfLink = theBlog.self_link
    b.postsTotalItems = theBlog.posts.total_items
    b.postsSelfLink = theBlog.posts.self_link
    b.pagesTotalItems = theBlog.pages.total_items
    b.pagesSelfLink = theBlog.pages.self_link
    b.localeLanguage = theBlog.locale.language
    b.localeCountry = theBlog.locale.country
    b.localeVariant = theBlog.locale.variant

    b.save

    return b
  end
end
