class CreateNoteTasks < ActiveRecord::Migration
  def self.up
    create_table :note_tasks do |t|
      t.integer :task_id
      t.integer :note_id

      t.timestamps
    end
  end

  def self.down
    drop_table :note_tasks
  end
end
