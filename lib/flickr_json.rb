require 'open-uri'
require 'json'

# Flickr JSON parser, returns an array of ruby hashes representing the json objects
module FlickrJson
  class PublicFeed
    attr_accessor :buffer
    BASE_URL = "http://api.flickr.com/services/feeds/photos_public.gne?format=json"
    TAGGED_URL = "http://api.flickr.com/services/feeds/photos_public.gne?format=json&tag="

    def initialize(tag=nil)
      url = tag.nil? ? BASE_URL : TAGGED_URL + tag
      @buffer = open(url).read
    end

    def json_items
      json = JSON.parse(get_json)["items"]
      items = json.inject([]) do |items, item|
        items << check(item)
      end
    end

    private

    def get_json
      buffer.gsub("jsonFlickrFeed(", '').gsub("})", "}")
    end

    def check(item)
      item.update(item) do |k, v|
        v.blank? ? "No data" : v #if any value is empty puts a placeholder
        k == "media" ? v = v.flatten.last : v #corrects the media attr to directly show an url
      end
    end
  end
end