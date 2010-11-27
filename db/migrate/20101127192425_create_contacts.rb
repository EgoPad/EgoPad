class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :FIO
      t.string :adress
      t.string :phone
      t.string :e_mail
      t.string :web_page
      t.integer :contactscategory_id
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
