class Admin::MenusController < Admin::AdminSiteController

  hobo_model_controller Menu

  auto_actions :all

end
