require "spec_helper"

describe HomeController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "fetches new feed" do
      get :index
      assigns(:items).should_not be_empty
      expect(response).to render_template("index")
    end

    it "paginates the feed" do
      2.times{ FlickrFeed.update }
      get :index, :page => 2
      assigns(:items).should_not be_empty
    end

  end

  describe "GET #get_larger_image" do
    before(:each) do
      feed = FlickrFeed.update
      get :get_larger_image, :id => feed.first.id
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "shows a larger version of a selected image" do
      assigns(:item).should_not be_blank
      expect(response).to render_template(:partial => "_modal_body")
    end
  end

  describe "GET #tag" do
    before(:each) do
      get :tag, :search => "ruby"
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "fetches feed by tag" do
      assigns(:items).should_not be_empty
      expect(response).to render_template("index")
    end
  end
end