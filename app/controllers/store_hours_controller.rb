class StoreHoursController < ApplicationController

  def index
    @store_hours = StoreHours.all
    @locations = Location.all
    @store_hours = StoreHours.all
  end

end
