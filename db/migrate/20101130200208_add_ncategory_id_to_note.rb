class AddNcategoryIdToNote < ActiveRecord::Migration
  def self.up
    add_column :notes, :ncategory_id, :integer
  end

  def self.down
    remove_column :notes, :ncategory_id
  end
end
