class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :kind
      t.integer :blog_id
      t.string :description
      t.datetime :publishedDate
      t.datetime :updateDate
      t.string :url
      t.string :selfLink
      t.integer :postsTotalItems
      t.string :postsSelfLink
      t.integer :pagesTotalItems
      t.string :pagesSelfLink
      t.string :localeLanguage
      t.string :localeCountry
      t.string :localeVariant

      t.timestamps
    end
  end
end
