class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :bw_classes do |t|
      t.string   :name
      t.integer  :bw_rate
      t.integer  :bw_max
      t.integer  :priority
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    add_column :access_controls, :bw_class_id, :integer
  end

  def self.down
    remove_column :access_controls, :bw_class_id
    
    drop_table :bw_classes
  end
end
