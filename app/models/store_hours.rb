class StoreHours < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name       :string
    open_time  :time
    close_time :time
    timestamps
  end

  validates_presence_of :name, :open_time, :close_time

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
