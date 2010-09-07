class NewsController < ApplicationController

  def index
    @news = News.all(:order => 'created_at DESC')
    @locations = Location.all(:limit => 2)
    @store_hours = StoreHours.all(:limit => 5)
  end

end
