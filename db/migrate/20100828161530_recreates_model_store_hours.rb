class RecreatesModelStoreHours < ActiveRecord::Migration
  def self.up
    add_column :store_hours, :name, :string
    remove_column :store_hours, :label
  end

  def self.down
    remove_column :store_hours, :name
    add_column :store_hours, :label, :string
  end
end
