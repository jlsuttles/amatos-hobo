class CreatesModelEvent < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string   :name
      t.date     :date
      t.time     :time
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :events
  end
end
