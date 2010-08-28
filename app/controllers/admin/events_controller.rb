class Admin::EventsController < Admin::AdminSiteController

  hobo_model_controller Event

  auto_actions :all

end
