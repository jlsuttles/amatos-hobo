class AddsMenuIdToItemTable < ActiveRecord::Migration
  def self.up
    add_column :items, :menu_id, :integer

    add_index :items, [:menu_id]
  end

  def self.down
    remove_column :items, :menu_id

    remove_index :items, :name => :index_items_on_menu_id rescue ActiveRecord::StatementInvalid
  end
end
