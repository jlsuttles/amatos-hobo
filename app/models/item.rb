class Item < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name         :string
    description  :text
    special_note :string
    small_price  :dollars, :precision => 12, :scale => 2
    large_price  :dollars, :precision => 12, :scale => 2
    timestamps
  end

  belongs_to :menu

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
