class AboutUsController < ApplicationController

  def index
    @about_us = AboutUs.all
    @locations = Location.all
    @store_hours = StoreHours.all
  end

end
