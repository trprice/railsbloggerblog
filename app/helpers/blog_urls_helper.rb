# Info about the blogger api can be seen in the service.rb file here:
module BlogUrlsHelper
  def self.get_blog(url)
    b_url = BlogUrl.new
    b_url.url = url

    blog = BlogsHelper.get_blogger_by_url(url)
    b_url.blog_id = blog.blog_id

    b_url.save

    return b_url
  end
end
