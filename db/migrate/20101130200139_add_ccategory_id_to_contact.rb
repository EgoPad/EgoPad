class AddCcategoryIdToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :ccategory_id, :integer
  end

  def self.down
    remove_column :contacts, :ccategory_id
  end
end
