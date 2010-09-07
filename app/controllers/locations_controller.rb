class LocationsController < ApplicationController

  def index
    @locations = Location.all(:limit => 2)
    @store_hours = StoreHours.all(:limit => 5)
  end

end
