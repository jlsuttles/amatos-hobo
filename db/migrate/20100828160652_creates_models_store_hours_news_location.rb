class CreatesModelsStoreHoursNewsLocation < ActiveRecord::Migration
  def self.up
    create_table :store_hours do |t|
      t.string   :label
      t.time     :open_time
      t.time     :close_time
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :news do |t|
      t.string   :title
      t.text     :body
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :locations do |t|
      t.string   :name
      t.string   :address
      t.text     :directions
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :store_hours
    drop_table :news
    drop_table :locations
  end
end
