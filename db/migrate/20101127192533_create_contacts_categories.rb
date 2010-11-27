class CreateContactsCategories < ActiveRecord::Migration
  def self.up
    create_table :contacts_categories do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts_categories
  end
end
