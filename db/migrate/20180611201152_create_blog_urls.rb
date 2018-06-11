class CreateBlogUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_urls do |t|
      t.integer :blog_id
      t.string :url

      t.timestamps
    end
  end
end
