class CreateTasksCategories < ActiveRecord::Migration
  def self.up
    create_table :tasks_categories do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks_categories
  end
end
