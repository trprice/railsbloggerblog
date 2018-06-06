json.extract! blog, :id, :kind, :blog_id, :description, :publishedDate, :updateDate, :url, :selfLink, :postsTotalItems, :postsSelfLink, :pagesTotalItems, :pagesSelfLink, :localeLanguage, :localeCountry, :localeVariant, :created_at, :updated_at
json.url blog_url(blog, format: :json)
