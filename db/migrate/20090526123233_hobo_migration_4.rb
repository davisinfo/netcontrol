class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :access_controls, :bw_rate, :integer
    add_column :access_controls, :bw_max, :integer
  end

  def self.down
    remove_column :access_controls, :bw_rate
    remove_column :access_controls, :bw_max
  end
end
