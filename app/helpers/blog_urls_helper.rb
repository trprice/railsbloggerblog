# Info about the blogger api can be seen in the service.rb file here:
# https://github.com/google/google-api-ruby-client/blob/master/generated/google/apis/blogger_v3/service.rb
require 'google/apis/blogger_v3'

module BlogUrlsHelper
  def get_blogger_by_url(url)
    Blogger = Google::Apis::BloggerV3 # Alias the module
    service = Blogger::BloggerService.new

		service.key = ENV["GOOGLE_API_KEY"]

		returned_blog = service.get_blog_by_url(url.url)

    blog = Blog.from_blogger(returned_blog)

    # Set the blog id into the current object then save
  end
end

# Implement a data mapping module to map between the Google::Apis::BloggerV3::Blog and the Blog model
