class Admin::LocationsController < Admin::AdminSiteController

  hobo_model_controller Location

  auto_actions :all

end
