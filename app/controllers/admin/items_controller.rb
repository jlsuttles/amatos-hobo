class Admin::ItemsController < Admin::AdminSiteController

  hobo_model_controller Item

  auto_actions :all, :except => :index
  auto_actions_for :menu, :create

end
