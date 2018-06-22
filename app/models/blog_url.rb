class BlogUrl < ApplicationRecord
  validates_presence_of :url, :blog_id
end
