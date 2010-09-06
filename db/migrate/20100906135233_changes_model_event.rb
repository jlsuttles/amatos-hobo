class ChangesModelEvent < ActiveRecord::Migration
  def self.up
    rename_column :events, :date_and_time, :date
    add_column :events, :time, :time
  end

  def self.down
    rename_column :events, :date, :date_and_time
    remove_column :events, :time
  end
end
