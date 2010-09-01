class LocationsController < ApplicationController

  def index
    @locations = Location.all
    @store_hours = StoreHours.all
  end

end
