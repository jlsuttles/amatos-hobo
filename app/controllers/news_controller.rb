class NewsController < ApplicationController

  def index
    @news = News.all.reverse
    @locations = Location.all
    @store_hours = StoreHours.all
  end

end
