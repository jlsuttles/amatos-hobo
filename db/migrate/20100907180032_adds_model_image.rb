class AddsModelImage < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string   :name
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :file_file_name
      t.string   :file_content_type
      t.integer  :file_file_size
      t.datetime :file_updated_at
    end
  end

  def self.down
    drop_table :images
  end
end
