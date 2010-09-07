class MenusController < ApplicationController

  def index
    @menus = Menu.all
    @locations = Location.all(:limit => 2)
    @store_hours = StoreHours.all(:limit => 5)
  end
  
  def view; end

end
