class ChangesModelEvents < ActiveRecord::Migration
  def self.up
    change_column :events, :date_and_time, :date
  end

  def self.down
    change_column :events, :date_and_time, :datetime
  end
end
