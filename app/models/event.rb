class Event < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name          :string
    date_and_time :datetime
    description   :text
    timestamps
  end

  validates_presence_of :name, :date_and_time, :description

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
