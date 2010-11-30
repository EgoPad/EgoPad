class CreateCcategories < ActiveRecord::Migration
  def self.up
    create_table :ccategories do |t|
      t.string :title
      t.timestamps
    end
  end

  def self.down
    drop_table :ccategories
  end
end
