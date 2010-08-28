class AddsNameToModelAboutUs < ActiveRecord::Migration
  def self.up
    add_column :about_us, :name, :string
  end

  def self.down
    remove_column :about_us, :name
  end
end
