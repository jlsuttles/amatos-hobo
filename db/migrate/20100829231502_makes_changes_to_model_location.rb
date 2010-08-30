class MakesChangesToModelLocation < ActiveRecord::Migration
  def self.up
    rename_column :locations, :address, :address_line_1
    add_column :locations, :address_line_2, :string
    add_column :locations, :phone_number, :string
  end

  def self.down
    rename_column :locations, :address_line_1, :address
    remove_column :locations, :address_line_2
    remove_column :locations, :phone_number
  end
end
