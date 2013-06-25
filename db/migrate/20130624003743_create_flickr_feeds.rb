class CreateFlickrFeeds < ActiveRecord::Migration
  def change
    create_table :flickr_feeds do |t|
      t.text :title
      t.string :link
      t.string :date_taken
      t.string :media
      t.text :description
      t.string :published
      t.string :author
      t.string :author_id
      t.text :tags

      t.timestamps
    end
  end
end
