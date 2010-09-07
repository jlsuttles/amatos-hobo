class NewsController < ApplicationController

  def index
    @news = News.all(:order => 'created_at DESC')
    @locations = Location.all
    @store_hours = StoreHours.all
  end

end
