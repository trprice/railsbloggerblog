# Info about the blogger api can be seen in the service.rb file here:
module BlogUrlsHelper
  def self.get_blog(blog_url, url)
    blog_url.url = url

    blog = BlogsHelper.get_blogger_by_url(blog_url.url)
    blog_url.blog_id = blog.blog_id
  end
end
