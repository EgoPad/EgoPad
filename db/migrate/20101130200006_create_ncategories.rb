class CreateNcategories < ActiveRecord::Migration
  def self.up
    create_table :ncategories do |t|
      t.string :title
      t.timestamps
    end
  end

  def self.down
    drop_table :ncategories
  end
end
