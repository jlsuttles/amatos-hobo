class EventsController < ApplicationController

  def index
    @events = Event.all(:order => 'date DESC, time DESC')
    @locations = Location.all(:limit => 2)
    @store_hours = StoreHours.all(:limit => 5)
  end

end
