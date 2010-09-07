class AboutUsController < ApplicationController

  def index
    @about_us = AboutUs.all
    @locations = Location.all(:limit => 2)
    @store_hours = StoreHours.all(:limit => 5)
  end

end
