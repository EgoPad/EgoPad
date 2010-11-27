class CreateNotesCategories < ActiveRecord::Migration
  def self.up
    create_table :notes_categories do |t|
      t.string :title
      t.timestamps
    end
  end

  def self.down
    drop_table :notes_categories
  end
end
