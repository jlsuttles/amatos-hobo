class ChangeModelEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :date_and_time, :datetime
    remove_column :events, :time
    remove_column :events, :date
  end

  def self.down
    remove_column :events, :date_and_time
    add_column :events, :time, :time
    add_column :events, :date, :date
  end
end
