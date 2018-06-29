require 'google/apis/blogger_v3'

module BlogsHelper
  Blogger = Google::Apis::BloggerV3 # Alias the module

  def self.get_blogger_by_url(url)
    service = Blogger::BloggerService.new

		service.key = ENV["GOOGLE_API_KEY"]

		returned_blog = service.get_blog_by_url(url)

    blog = Blog.from_blogger(returned_blog)
  end
end
