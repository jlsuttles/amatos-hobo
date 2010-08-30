class Location < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name            :string
    address_line_1  :string
    address_line_2  :string
    phone_number    :string
    directions      :text
    timestamps
  end

  validates_presence_of :name

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
