class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.date :time_limit
      t.text :description
      t.boolean :active
      t.integer :taskscategory_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
