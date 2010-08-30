class FrontController < ApplicationController

  hobo_controller

  def index
    @about_us = AboutUs.all
    @events = Event.all.reverse
    @locations = Location.all
    @menus = Menu.all
    @news = News.all.reverse
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
