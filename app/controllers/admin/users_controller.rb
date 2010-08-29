class Admin::UsersController < Admin::AdminSiteController

  hobo_user_controller UsersController

  auto_actions :all, :except => [ :index, :new, :create ]
  
end
