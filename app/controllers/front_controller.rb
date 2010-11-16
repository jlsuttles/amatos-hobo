class FrontController < ApplicationController

  hobo_controller

  def index
    @about_us = AboutUs.all(:limit => 5)
    @events = Event.all(:limit => 5, :order => 'date DESC, time DESC')
    @locations = Location.all(:limit => 2)
    @store_hours = StoreHours.all(:limit => 5)
    @menus = Menu.all
    @news = News.all(:limit => 5, :order => 'created_at DESC')
  end

  def summary
    if !current_user.administrator?
      redirect_to user_login_path
    end
  end

  def search
    if params[:query]
      site_search(params[:query])
    end
  end

end
