class MenusController < ApplicationController

  def index
    @menus = Menu.all
    @locations = Location.all
    @store_hours = StoreHours.all
  end
  
  def view; end

end
