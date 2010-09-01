class EventsController < ApplicationController

  def index
    @events = Event.all.reverse
    @locations = Location.all
    @store_hours = StoreHours.all
  end

end
