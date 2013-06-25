class FlickrFeed < ActiveRecord::Base
  include FlickrJson

  attr_accessible :author, :author_id, :date_taken, :description, :link, :published, :tags, :title, :media

  scope :ordered, lambda { || order("created_at DESC") }

  self.per_page = 20

  def self.update(tag=nil)
    self.items(self.get_json_feed(tag)).paginate(:page => 1, :per_page => 15)
  end

  def modal_body
    description.gsub(media, larger_image)
  end

  private

  def self.get_json_feed(tag=nil)
    PublicFeed.new(tag).json_items
  end

  def self.items(json)
    items = json.inject([]) do |items, item|
      items << FlickrFeed.create(item)
    end
  end

  def larger_image
    self.media.gsub("_m.", "_b.")
  end
end
