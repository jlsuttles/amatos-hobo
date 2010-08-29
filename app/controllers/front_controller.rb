class FrontController < ApplicationController

  hobo_controller

  def index
    @about_us = AboutUs.all
    @events = Event.all
    @locations = Location.all
    @menus = Menu.all
    @news = News.all
    @store_hours = StoreHours.all
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
