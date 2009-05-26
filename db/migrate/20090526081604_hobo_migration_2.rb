class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :access_controls, :description, :string
  end

  def self.down
    remove_column :access_controls, :description
  end
end
