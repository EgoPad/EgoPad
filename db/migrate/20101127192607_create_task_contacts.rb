class CreateTaskContacts < ActiveRecord::Migration
  def self.up
    create_table :task_contacts do |t|
      t.integer :task_id
      t.integer :contact_id

      t.timestamps
    end
  end

  def self.down
    drop_table :task_contacts
  end
end
