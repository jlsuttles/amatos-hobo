class Admin::UsersController < Admin::AdminSiteController
  
  hobo_user_controller User

  auto_actions :all

end
