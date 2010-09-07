class EventsController < ApplicationController

  def index
    @events = Event.all(:order => 'date DESC, time DESC')
    @locations = Location.all
    @store_hours = StoreHours.all
  end

end
