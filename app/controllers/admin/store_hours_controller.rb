class Admin::StoreHoursController < Admin::AdminSiteController

  hobo_model_controller StoreHours

  auto_actions :all

end
