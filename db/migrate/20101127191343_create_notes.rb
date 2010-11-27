class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.string :title
      t.string :URL
      t.text :content
      t.boolean :sharable
      t.integer :notescategory_id
      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
