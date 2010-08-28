class CreatesModelAboutUs < ActiveRecord::Migration
  def self.up
    create_table :about_us do |t|
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :about_us
  end
end
