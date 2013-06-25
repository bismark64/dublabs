require "spec_helper"

module Dublabs
  describe FlickrFeed do
    let(:json_feed){ FlickrFeed.send(:get_json_feed) }
    let(:items){ FlickrFeed.send(:items, json_feed) }
    let(:updated_feed){ FlickrFeed.update }

    it "stores the fetched feed in memory" do
      items.should_not be_empty
      items.count.should == 20
      items.each do |item|
        item.should be_an_instance_of FlickrFeed
      end
    end

    it "updates the feed using FlickrJson" do
      updated_feed.should_not be_empty
      updated_feed.count.should == 15 # Although Flickr API returns 20 records, we'll paginate them to see the paginator
    end
  end
end