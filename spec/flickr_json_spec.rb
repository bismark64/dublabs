require "spec_helper"

module FlickrJson
  describe PublicFeed do
    let(:feed){ described_class.new }
    let(:json){ feed.json_items }
    
    it "fetches a json object containing the Flickr Public Feed" do
      feed.buffer.should_not be_empty
    end

    it "parses the json object to a Rails collection" do
      json.should_not be_empty
      json.count.should == 20 # Flickr API returns the 20 newest feed
      json.should be_an_instance_of Array
    end
  end
end