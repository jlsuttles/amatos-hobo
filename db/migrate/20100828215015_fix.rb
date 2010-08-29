class Fix < ActiveRecord::Migration
  def self.up
    remove_column :news, :body
  end

  def self.down
    add_column :news, :body, :text
  end
end
