json.extract! blog_url, :id, :blog_id, :url, :created_at, :updated_at
json.url blog_url_url(blog_url, format: :json)
