class CreateTaskEntries < ActiveRecord::Migration
  def self.up
    create_table :task_entries do |t|
      t.string :task_name , :limit => 50
      t.string :task_description , :limit => 200
      t.integer :deadline
      t.integer :task_status_id
      t.timestamps
    end
  end

  def self.down
    drop_table :task_entries
  end
end