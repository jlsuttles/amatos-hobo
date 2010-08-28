class Admin::NewsController < Admin::AdminSiteController

  hobo_model_controller News

  auto_actions :all

end
