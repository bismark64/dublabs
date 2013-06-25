class HomeController < ApplicationController
  def index
    if params[:page].present?
      @items = FlickrFeed.ordered.page(params[:page])
    else
      @items = FlickrFeed.update
    end
  end

  def get_larger_image
    @item = FlickrFeed.find(params[:id])
    
    respond_to do |format|
      format.html { render :partial => 'modal_body'}
    end
  end

  def tag
    @items = FlickrFeed.update(params[:search])

    respond_to do |format|
      format.html { render 'index'}
    end
  end
end
