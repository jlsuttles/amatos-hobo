class RenamesModelNewsRows < ActiveRecord::Migration
  def self.up
    add_column :news, :name, :string
    add_column :news, :description, :text
    remove_column :news, :title
  end

  def self.down
    remove_column :news, :name
    remove_column :news, :description
    add_column :news, :title, :string
  end
end
