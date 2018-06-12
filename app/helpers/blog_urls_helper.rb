# Info about the blogger api can be seen in the service.rb file here:
# https://github.com/google/google-api-ruby-client/blob/master/generated/google/apis/blogger_v3/service.rb
require 'google/apis/blogger-v3'

module BlogUrlsHelper
  def get_blogger_by_url(url)
    Blogger = Google::Apis::BloggerV3 # Alias the module
    service = Blogger::BloggerService.new

		service.key = ENV["GOOGLE_API_KEY"]

		returned_blog = service.get_blog_by_url(url.url)
  end
end
