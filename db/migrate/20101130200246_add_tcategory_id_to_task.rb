class AddTcategoryIdToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks, :tcategory_id, :integer
  end

  def self.down
    remove_column :tasks, :tcategory_id
  end
end
