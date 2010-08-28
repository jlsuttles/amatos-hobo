class CreatesModelsItemAndMenu < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string   :name
      t.text     :description
      t.string   :special_note
      t.decimal  :small_price, :scale => 2, :precision => 12
      t.decimal  :large_price, :scale => 2, :precision => 12
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :menus do |t|
      t.string   :name
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :items
    drop_table :menus
  end
end
